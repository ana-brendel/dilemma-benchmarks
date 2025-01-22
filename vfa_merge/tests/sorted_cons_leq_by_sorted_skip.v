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
    *  apply IHl. 
    findlemma. Admitted.
    
    (* eapply sorted_skip. eassumption.
Qed.  *)
