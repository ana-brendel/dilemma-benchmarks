(* These specify the libraries of functions that should be considered during synthesis that 
    are not defined within the above libraries. *)
Require Import Coq.Lists.List.
Require Import Coq.Sorting.Permutation. 
From Coq Require Import micromega.Lia.

From LFindToo Require Import LFindToo.

Require Import vfa_merge_benchmarks.Definitions.
Require Import vfa_merge_benchmarks.Decide.


Lemma split_len': list_ind2_principle -> forall {X} (l:list X) (l1 l2: list X),
    split l = (l1,l2) -> length l1 <= length l /\ length l2 <= length l.
Proof.
    unfold list_ind2_principle; intro IP.
    induction l using IP; intros.
    - inversion H. lia.
    - inversion H. simpl; lia.
    - inversion H. destruct (split l) as [l1' l2']. inversion H1.
    simpl.
    destruct (IHl l1' l2') as [P1 P2]; auto; lia.
Qed.

Lemma split_len: forall {X} (l:list X) (l1 l2: list X),
    split l = (l1,l2) ->
    length l1 <= length l /\
    length l2 <= length l.
Proof.
    apply (@split_len' list_ind2).
    (* intros. generalize dependent l1; generalize dependent l2. induction l using list_ind2.
    - intros. inversion H. simpl. auto.
    - intros. inversion H. simpl. split. reflexivity. auto.
    - intros. simpl. inversion H. destruct (split l). inversion H1. 
        simpl. destruct (IHl l3 l0). reflexivity. lia. *)
Qed.

 
Lemma split_perm : forall {X:Type} (l l1 l2: list X),
    split l = (l1,l2) -> Permutation l (l1 ++ l2).
Proof.
  intros. generalize dependent l1; generalize dependent l2. induction l using list_ind2.
  - intros. inversion H. auto.
  - intros. inversion H. auto.
  - intros. inversion H. destruct (split l). inversion H1.
  simpl. apply perm_skip. 
  (* HELPER LEMMA *)
  apply Permutation_cons_app. apply IHl. reflexivity.
Qed.

Lemma merge2 : forall (x1 x2:nat) r1 r2,
    x1 <= x2 -> merge (x1::r1) (x2::r2) = x1::merge r1 (x2::r2).
Proof.
    intros. generalize dependent x1; generalize dependent x2; generalize dependent r2. 
    induction r1 using list_ind2.
    - intros. simpl. bdestruct (Nat.leb x1 x2). reflexivity. lia. 
    - intros. simpl. bdestruct (Nat.leb x1 x2). reflexivity. lia. 
    - intros. simpl. bdestruct (Nat.leb x1 x2). 
    { apply f_equal.  bdestruct (Nat.leb a x2).
        -- apply f_equal. reflexivity.
        -- apply f_equal. reflexivity. }
    { lia. }
Qed.

Lemma merge_nil_l : forall l, merge [] l = l. 
Proof. intros. destruct l. reflexivity. reflexivity. Qed.

Lemma merge_nil_r : forall l, merge l [] = l. 
Proof. intros. destruct l. reflexivity. reflexivity. Qed.

(* ================================================================= *)
(** ** Defining Mergesort *)

Function mergesort (l: list nat) {measure length l} : list nat :=
  match l with
  | [] => []
  | [x] => [x]
  | _ => let (l1,l2) := split l in
         merge (mergesort l1) (mergesort l2)
  end.
Proof.
  - intros.
    simpl in *.  destruct (split l1) as [l1' l2'] eqn:E. inversion teq1. 
    (* HELPER LEMMA *)
    destruct (split_len _ _ _ E).
    simpl. lia.
  - intros.
    simpl in *. destruct (split l1) as [l1' l2'] eqn:E. inversion teq1. 
    (* HELPER LEMMA *)
    destruct (split_len _ _ _ E).
    simpl. lia.
Defined.

(* ================================================================= *)
(** ** Correctness: Sortedness *)

Lemma sorted_merge1 : forall x x1 l1 x2 l2,
    x <= x1 -> x <= x2 -> sorted (merge (x1::l1) (x2::l2)) -> sorted (x :: merge (x1::l1) (x2::l2)).
Proof.
    intros.
    simpl in H1; simpl. bdestruct (Nat.leb x1 x2).
    - apply sorted_cons. assumption. assumption.
    - apply sorted_cons. assumption. assumption.
Qed.

Lemma destruct_sorted : forall x l, sorted (x :: l) -> sorted l.
Proof. 
  intros. induction l.
  - apply sorted_nil.
  - inversion H. assumption.
Qed.

Lemma sorted_skip: forall a b l, sorted (b :: a :: l) -> sorted (b :: l).
Proof. 
  intros. generalize dependent a. generalize dependent b. induction l.
  - intros. apply sorted_1.
  - intros. inversion H. inversion H4. apply sorted_cons. lia. assumption.
Qed.

Lemma sorted_cons_leq: forall b l, sorted (b :: l) -> b <=* l.
Proof. 
  intros. generalize dependent b. induction l.
  - intros. apply Forall_nil.
  - intros. apply Forall_cons. 
    * inversion H. assumption.
    *  apply IHl. eapply sorted_skip. eassumption.
Qed. 

Lemma sorted_all_cons: forall b l, b <=* l -> sorted l -> sorted (b :: l).
Proof. 
  intros. generalize dependent b. induction l.
  - intros. apply sorted_1.
  - intros. apply sorted_cons.
    * inversion H. assumption.
    * assumption.
Qed.   

Lemma leq_all_merge: forall b l m, b <=* l -> b <=* m -> b <=* merge l m.
Proof. 
  intros. generalize dependent l. induction m.
  - intros. rewrite merge_nil_r. assumption.
  - intros. induction l. 
    * rewrite merge_nil_l. assumption.
    * simpl. bdestruct (Nat.leb a0 a).
    ** apply Forall_cons. eapply Forall_inv. apply H. apply IHl. eapply Forall_inv_tail. eassumption.
    ** apply Forall_cons. eapply Forall_inv. apply H0.  
    assert (Q: merge (a0 :: l) m = ((fix merge_aux (l2 : list nat) : list nat :=
      match l2 with | [] => a0 :: l | a2 :: l2' =>
        if a0 <=? a2 then a0 :: merge l l2 else a2 :: merge_aux l2' end) m)). simpl. reflexivity.
    rewrite <- Q. clear Q. apply IHm. eapply Forall_inv_tail. eassumption. assumption.
Qed.

Lemma merge_inv: forall l1 l2, merge l1 l2 = [] -> l1 = [] /\ l2 = [].
Proof.
  intros. generalize dependent l2. induction l1. 
  - intros. rewrite merge_nil_l in H. split. reflexivity. assumption.
  - intros. induction l2.
  -- rewrite merge_nil_r in H. rewrite H. auto.
  -- inversion H. destruct (Nat.leb a a0). 
    symmetry in H1. apply nil_cons in H1. contradiction.
    symmetry in H1. apply nil_cons in H1. contradiction.
Qed.

Lemma single_merge_l: forall x l, sorted l -> sorted (merge [x] l).
Proof. 
  intros. induction l.
  - rewrite merge_nil_r. apply sorted_1.
  - simpl. bdestruct (Nat.leb x a).
  + apply sorted_cons. assumption. assumption.
  + assert (Q: merge [x] l = (fix merge_aux (l0 : list nat) : list nat :=
        match l0 with | [] => [x] | a2 :: l2' => if x <=? a2
          then x :: (fix merge_aux0 (l1 : list nat) : list nat := l1) l0 
          else a2 :: merge_aux l2' end) l). simpl. reflexivity.
    rewrite <- Q. clear Q. apply sorted_all_cons.
    * apply leq_all_merge. apply Forall_cons. lia. apply Forall_nil. apply sorted_cons_leq. assumption.
    * apply IHl. eapply destruct_sorted. eassumption.
Qed.

Lemma single_merge_r: forall x l, sorted l -> sorted (merge l [x]).
Proof. 
  intros. induction l.
  - rewrite merge_nil_l. apply sorted_1.
  - simpl. bdestruct (Nat.leb a x).
  + apply sorted_all_cons. 
  * apply leq_all_merge. apply sorted_cons_leq. assumption. apply Forall_cons. assumption. apply Forall_nil.
  * apply IHl. eapply destruct_sorted. eassumption. 
  + apply sorted_cons. lia. assumption.
Qed.

Lemma Forall_trans: forall a b l, b <= a -> a <=* l -> b <=* l.
Proof.
  intros. induction l.
  - apply Forall_nil.
  - apply Forall_cons. 
  -- apply Forall_inv in H0. lia.
  -- apply IHl. eapply Forall_inv_tail. eassumption.
Qed. 

Lemma destruct_merge: forall l1 l2 b, sorted (merge l1 l2) -> b <=* l1 -> sorted l2 -> sorted (merge (b :: l1) l2).
Proof.
  intros. generalize dependent l2. generalize dependent b. induction l1.
  - intros. induction l2.
  -- rewrite merge_nil_r. apply sorted_1. 
  -- apply single_merge_l. rewrite merge_nil_l in H. assumption.
  - intros. generalize dependent b. induction l2.
  -- intros. rewrite merge_nil_r. apply sorted_cons. eapply Forall_inv. eassumption. rewrite <- merge_nil_r. assumption.
  -- intros. simpl. bdestruct (Nat.leb b a0).
  * assert (Q: merge (a :: l1) (a0 :: l2) = (if a <=? a0 then a :: merge l1 (a0 :: l2)
  else a0 :: (fix merge_aux (l0 : list nat) : list nat := match l0 with
  | [] => a :: l1 | a2 :: l2' => if a <=? a2 then a :: merge l1 l0 else a2 :: merge_aux l2'
  end) l2)). simpl. reflexivity. rewrite <- Q. clear Q.
  apply sorted_all_cons.
  + apply leq_all_merge. assumption. apply Forall_cons. assumption. eapply Forall_trans. eassumption. apply sorted_cons_leq. assumption.
  + assumption.
  * assert (Q: merge (b :: a :: l1) l2 = (fix merge_aux (l2 : list nat) : list nat :=
    match l2 with | [] => b :: a :: l1 | a2 :: l2' => if b <=? a2
    then b :: (fix merge_aux0 (l0 : list nat) : list nat := match l0 with
    | [] => a :: l1 | a3 :: l2'0 => if a <=? a3 then a :: merge l1 l0 else a3 :: merge_aux0 l2'0 end) l2 else a2 :: merge_aux l2'
    end) l2). simpl. reflexivity. rewrite <- Q. clear Q.
    apply sorted_all_cons.
    + apply leq_all_merge. apply Forall_cons. lia. eapply Forall_trans with (a := b). lia. assumption. apply sorted_cons_leq. assumption.
    + apply IHl2. simpl in H. bdestruct (Nat.leb a a0).
    ++ assert (C: b <= a). eapply Forall_inv. eassumption. lia.
    ++ findlemma. Admitted.
    
    (* eapply destruct_sorted. eassumption.
    ++ eapply destruct_sorted. eassumption.
    ++ assumption.
Qed. *)
  