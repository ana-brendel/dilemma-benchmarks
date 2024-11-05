(* These specify the libraries of functions that should be considered during synthesis that 
    are not defined within the above libraries. *)
Require Import Coq.Lists.List.
Require Import Coq.Sorting.Permutation. 
From Coq Require Import micromega.Lia.

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
    - (* HELPER LEMMA *)
    apply sorted_cons. assumption. assumption.
    -  (* HELPER LEMMA *)
    apply sorted_cons. assumption. assumption.
Qed.

Lemma destruct_sorted : forall x l, sorted (x :: l) -> sorted l.
Proof. 
  intros. induction l.
  - apply sorted_nil.
  - inversion H. assumption.
Qed.

Definition list2_ind2 :
  forall (A : Type) (P : list A -> Prop) (D : forall a l, P (a :: l) -> P l) (f : list A -> list A -> list A),
      P (f [] []) ->
      (forall (l:list A), P l -> P (f l [])) ->
      (forall (l:list A), P l -> P (f [] l)) ->
      (forall (a b : A) (la lb : list A), ((P la -> P lb -> P (f la lb))) -> P (a :: la) -> P (b :: lb) -> (P (f (a :: la) (b :: lb)))) ->
      forall (la lb : list A), P la -> P lb -> P (f la lb) :=
  fun (A : Type)
      (P : list A -> Prop)
      (D : forall a l, P (a :: l) -> P l)
      (f : list A -> list A -> list A)
      (H : P (f [] []))
      (H0 : forall l : list A, P l -> P (f l []))
      (H1 : forall l : list A, P l -> P (f [] l))
      (H2 : forall (a b : A) (la lb : list A), ((P la -> P lb -> P (f la lb))) -> P (a :: la) -> P (b :: lb) -> (P (f (a :: la) (b :: lb))))  => 
    fix IH (la lb : list A) (Ha : P la) (Hb : P lb) :  P (f la lb) :=
    match la,lb, Ha, Hb with
    | [], [], _, _ => H 
    | [], x, _, _ => H1 x Hb
    | x, [], _, _ => H0 x Ha
    | a :: l, b :: m, x, y => H2 a b l m (IH l m) Ha Hb
    end.

Lemma sorted_cons_leq: forall b l, sorted (b :: l) -> b <=* l.
Proof. Admitted.

Lemma sorted_all_cons: forall b l, b <=* l -> sorted l -> sorted (b :: l).
Proof. Admitted.

Lemma leq_all_merge: forall b l m, b <=* l -> b <=* m -> b <=* merge l m.
Proof. Admitted.

Lemma destruct_merge: forall l1 l2 b, sorted (merge l1 l2) -> b <=* l1 -> sorted (merge (b :: l1) l2).
Proof. Admitted.

Lemma sorted_merge : forall l1, sorted l1 -> forall l2, sorted l2 -> sorted (merge l1 l2).
Proof.
  intros. generalize dependent l2. induction l1 using list_ind2.
  - intros. rewrite merge_nil_l. assumption.
  - intros. induction l2. rewrite merge_nil_r. assumption. apply destruct_merge.
  rewrite merge_nil_l. assumption. apply Forall_nil.
  - intros. induction l2 using list_ind2. 
    + rewrite merge_nil_r. assumption.
    + simpl. bdestruct (Nat.leb a a0). 
    ++ bdestruct (Nat.leb b a0). apply sorted_cons.
    +++ inversion H. assumption.
    +++ apply sorted_all_cons.
    -- apply leq_all_merge. apply sorted_cons_leq. inversion H. assumption. unfold le_all. auto.
    -- apply IHl1. inversion H. inversion H. eapply destruct_sorted. eassumption. assumption.
    +++ apply sorted_cons. assumption. apply sorted_cons. lia. inversion H. eapply destruct_sorted. eassumption.
    ++ apply sorted_cons. lia. assumption.
    + simpl. 

      assert (R: merge (b :: l1) l2 = (fix merge_aux (l0 : list nat) : list nat := match l0 with 
          | [] => b :: l1
          | a2 :: l2' => if b <=? a2 then b :: merge l1 l0 else a2 :: merge_aux l2' end) l2). simpl. reflexivity.

      bdestruct (Nat.leb a a0).
      ++ bdestruct (Nat.leb b a0). apply sorted_cons.
        +++ inversion H. assumption.
        +++ apply sorted_all_cons.
          -- apply leq_all_merge. apply sorted_cons_leq. inversion H. assumption.
          apply sorted_cons_leq. apply sorted_cons. assumption. assumption.
          -- apply IHl1. inversion H. eapply destruct_sorted. eassumption. assumption.
        +++ apply sorted_cons. assumption. bdestruct (Nat.leb b b0).
          -- apply sorted_cons. lia. apply sorted_all_cons. 
            * apply leq_all_merge. inversion H. apply sorted_cons_leq. assumption.
            inversion H0. apply sorted_cons_leq. apply sorted_cons. assumption. assumption.
            * apply IHl1. inversion H. eapply destruct_sorted. eassumption. inversion H0. assumption.
          -- apply sorted_cons. inversion H0. assumption.
          rewrite <- R. apply sorted_all_cons. 
            * apply leq_all_merge. apply sorted_cons_leq. apply sorted_cons. lia. inversion H. assumption.
            apply sorted_cons_leq. inversion H0. assumption.
            * apply destruct_merge. apply IHl1. inversion H. eapply destruct_sorted. eassumption. 
            inversion H0. eapply destruct_sorted. eassumption.
            apply sorted_cons_leq. inversion H. assumption.
      ++ rewrite <- R. clear R. bdestruct (Nat.leb a b0).
        +++ apply sorted_cons. lia. bdestruct (Nat.leb b b0).
          * apply sorted_cons. inversion H. assumption. apply sorted_all_cons.
            ** apply leq_all_merge. inversion H. apply sorted_cons_leq. assumption. 
            apply sorted_cons_leq. apply sorted_cons. assumption. inversion H0. assumption.
            ** apply IHl1. inversion H. eapply destruct_sorted. eassumption. inversion H0. assumption.
          * apply sorted_cons. inversion H. assumption. apply sorted_all_cons.
            ** apply leq_all_merge. inversion H. apply sorted_cons_leq. 
            apply sorted_cons. lia. assumption. inversion H0. apply sorted_cons_leq. assumption.
            ** apply destruct_merge. apply IHl1. inversion H. eapply destruct_sorted. eassumption.
            inversion H0. eapply destruct_sorted. eassumption. apply sorted_cons_leq. inversion H. assumption.
        +++ apply sorted_cons. inversion H0. assumption. 

        assert (Q: merge (a :: b :: l1) l2 = (fix merge_aux (l2 : list nat) : list nat :=
            match l2 with | [] => a :: b :: l1 | a2 :: l2' =>
              if a <=? a2 then a :: (fix merge_aux0 (l0 : list nat) : list nat :=
                      match l0 with
                      | [] => b :: l1
                      | a3 :: l2'0 =>
                          if b <=? a3
                          then b :: merge l1 l0
                          else a3 :: merge_aux0 l2'0 end) l2 else a2 :: merge_aux l2' end) l2). simpl. reflexivity.

        rewrite <- Q. clear Q. apply sorted_all_cons.
        ** apply leq_all_merge. apply sorted_cons_leq. apply sorted_cons. lia. assumption. apply sorted_cons_leq. inversion H0. assumption.
        ** apply IHl2. inversion H0. eapply destruct_sorted. eassumption.
Qed. 

Lemma mergesort_sorts: forall l, sorted (mergesort l).
Proof. 
  intros. induction l using list_ind2.
  - apply sorted_nil.
  - apply sorted_1.
  - simpl. inversion IHl. 


(* ================================================================= *)
(** ** Correctness: Permutation *)

Lemma merge_perm: forall (l1 l2: list nat),
    Permutation (l1 ++ l2) (merge l1 l2). 
Proof. 
  (* Hint: A nested induction on [l2] is required. *)
  (* FILL IN HERE *) Admitted.

Lemma mergesort_perm: forall l, Permutation l (mergesort l).
Proof.
  (* FILL IN HERE *) Admitted.


(* HIGH LEVEL THEOREM *)
Theorem mergesort_correct:
  is_a_sorting_algorithm mergesort.
Proof.
  split.
  apply mergesort_perm.
  apply mergesort_sorts.
Qed.

