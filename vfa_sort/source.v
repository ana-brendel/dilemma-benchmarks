
Require Import vfa_sort_benchmarks.Definitions.
Require Import vfa_sort_benchmarks.Decide.

(* These specify the libraries of functions that should be considered during synthesis that 
    are not defined within the above libraries. *)
Require Import Coq.Lists.List.
Require Import Coq.Sorting.Permutation. 

Require Import Lia.

Lemma insert_perm: forall x l, Permutation (x::l) (insert x l).
Proof.
(* FILL IN HERE *)
  intros. induction l as [|a l'].
  - simpl. apply Permutation_refl.
  - simpl. bdestruct (x <=? a).
    + apply Permutation_refl.
    + simpl. rewrite perm_swap. apply perm_skip. assumption.
Qed.

Theorem sort_perm: forall l, Permutation l (sort l).
Proof.
(* FILL IN HERE *)
  induction l.
  - simpl. apply Permutation_refl.
  - simpl. eapply perm_trans. apply perm_skip. apply IHl.
  apply insert_perm.
Qed.

Lemma insert_swap: forall x y l, x < y -> insert y (x::l) = x :: insert y l.
intros. induction l as [|a l'].
- simpl. bdestruct (y <=? x).
  + lia.
  + reflexivity.
- simpl. bdestruct (y <=? x). lia. reflexivity.
Qed.

Lemma insert_sorted:
  forall a l, sorted l -> sorted (insert a l).
Proof.
(* FILL IN HERE *)
  intros. induction l as [|a' l'].
  - simpl. apply sorted_1.
  - simpl. bdestruct (a <=? a').
    + apply sorted_cons. assumption. assumption.
    + inversion H. simpl. apply sorted_cons. lia. apply sorted_1. simpl. bdestruct (a <=? y).
      * apply sorted_cons. lia. apply sorted_cons. lia. assumption.
      * apply sorted_cons. lia. 
      assert (sorted (insert a l')). apply IHl'. rewrite <- H2. assumption.
      rewrite <- H2 in H6. rewrite <- (insert_swap y a l). assumption. lia.
Qed.  

Theorem sort_sorted: forall l, sorted (sort l).
Proof.
(* FILL IN HERE *)
  induction l.
  - simpl. apply sorted_nil.
  - simpl. apply insert_sorted. assumption.
Qed.

Theorem insertion_sort_correct: is_a_sorting_algorithm sort.
Proof. split. apply sort_perm. apply sort_sorted. Qed.

Lemma nth_succ: forall n x l, nth (S n) (x::l) 0 = nth n l 0.
Proof.
 intros. induction l. simpl. reflexivity.
 reflexivity.
Qed.

Lemma sorted'_cons: forall x y l, x <= y -> (sorted' (y::l)) -> sorted' (x::y::l).
Proof.
  intros. 
  unfold sorted' in *. intros. simpl in H1. bdestruct (i =? 0). bdestruct (j =? 0).
    * rewrite H2. rewrite H3. reflexivity.
    * rewrite H2. simpl. destruct j. lia. destruct j. assumption.
     simpl in H. eapply Nat.le_trans. apply H.
    apply (H0 0 (S j)). simpl. lia.
    * destruct j. lia. 
    assert (exists i', i = S i'). destruct i. lia. exists i. reflexivity. inversion H3. rewrite H4. rewrite nth_succ. rewrite nth_succ. apply H0. split. inversion H1. lia. inversion H1. simpl. lia.
Qed.

Lemma sorted_sorted': forall al, sorted al -> sorted' al.
Proof.
(** Hint: Instead of doing induction on the list [al], do induction
    on the _sortedness_ of [al]. This proof is a bit tricky, so
    you may have to think about how to approach it, and try out
    one or two different ideas.*)

(* FILL IN HERE *)
  intros. induction H.
  - unfold sorted'. simpl. lia.
  - unfold sorted'. simpl. lia.
  -  apply sorted'_cons. assumption. assumption.
Qed.

Lemma sorted'_sorted: forall al, sorted' al -> sorted al.

(** Here, you can't do induction on the sorted'-ness of the list,
    because [sorted'] is not an inductive predicate. *)

Proof.
(* FILL IN HERE *)
  intros. induction al.
  - apply sorted_nil.
  - destruct al. apply sorted_1.
    unfold sorted' in H. apply sorted_cons. apply (H 0 1). simpl. lia. apply IHal. fold sorted' in H. unfold sorted'. intros. apply (H (S i) (S j)). inversion H0. split. lia. simpl. simpl in H2. lia.
Qed.

(** **** Exercise: 3 stars, optional (Forall_nth)  *)
Lemma Forall_nth: forall {A: Type} (P: A -> Prop) d (al: list A), Forall P al <-> (forall i,  i < length al -> P (nth i al d)).
Proof.
(* FILL IN HERE *)
  intros. split.
  - intros. generalize dependent i. induction H.
    + intros. simpl in H0. lia.
    + intros. destruct i.
      * simpl. assumption.
      * simpl. apply IHForall. simpl in H1. lia.
  - intros. induction al.
    + apply Forall_nil.
    + apply Forall_cons. apply (H 0). simpl. lia. apply IHal. intros. apply (H (S i)). simpl. lia.
Qed.
    

Lemma insert_sorted': forall a l, sorted' l -> sorted' (insert a l).
Proof.
    (* FILL IN HERE *)
    intros. induction l.
    - simpl. unfold sorted'. intros. simpl in H0. lia.
    - simpl. bdestruct (a <=? a0).
      * apply sorted'_cons. assumption. assumption.
      * remember (insert a l) as l0. destruct l0.
        + contradict Heql0. destruct l. simpl. discriminate. simpl. (bdestruct (a <=? n)). discriminate. discriminate.
        + apply sorted'_cons. destruct l. simpl in Heql0. inversion Heql0. lia. simpl in Heql0. bdestruct (a <=? n0). inversion Heql0. lia. inversion Heql0. unfold sorted' in H. apply (H 0 1). simpl. lia. apply IHl.
        unfold sorted' in H. unfold sorted'. intros. apply (H (S i) (S j)). simpl. lia.
  Qed.  

Theorem sort_sorted': forall l, sorted' (sort l).
Proof.
    (* FILL IN HERE *)
  induction l. simpl. unfold sorted'. intros. simpl in H. lia. simpl. apply insert_sorted'. assumption.
Qed.