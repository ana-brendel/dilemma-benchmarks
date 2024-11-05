(** * Selection:  Selection Sort *)
(* Some proofs from: https://github.com/kolya-vasiliev/verified-functional-algorithms-2019/blob/master/Selection.v *)

From LFindToo Require Import LFindToo.

Require Import vfa_selection_benchmarks.Definitions.
Require Import vfa_selection_benchmarks.Decide.

(* These specify the libraries of functions that should be considered during synthesis that 
    are not defined within the above libraries. *)
Require Import Coq.Lists.List.
Require Import Coq.Sorting.Permutation. 

(* ################################################################# *)

Lemma select_perm: forall x l y r, select x l = (y, r) -> Permutation (x :: l) (y :: r).
Proof.
  intros x l; revert x.
  induction l; intros.
  - simpl in *. inversion H.
  (* HELPER LEMMA - case 1 *)
  apply Permutation_refl.
  - unfold select in H.  
    bdestruct (x <=? a); fold select in H.
    + specialize (IHl x).   
      destruct (select x l) eqn:Seq.
      apply perm_trans with (a :: n :: l0); try apply perm_swap.
      apply perm_trans with (a :: x :: l); try apply perm_swap.
      apply perm_skip.
      apply IHl. reflexivity. inversion H. rewrite <- H2.
      apply perm_swap.
    + specialize (IHl a).
      destruct (select a l) eqn:Seq.
      apply perm_trans with (x :: n :: l0); try apply perm_swap.
      apply perm_skip. apply IHl.
      reflexivity. inversion H. apply perm_swap.
Qed.

Lemma select_exists (l : list nat) (a : nat) : exists i j, select a l = (i ,j).
Proof.
  generalize dependent a. induction l.
  - intros. exists a. exists []. reflexivity.
  - intros. unfold select. destruct (a0 <=? a).
  + fold select. assert (P: exists i j, select a0 l = (i,j)). apply IHl.
  inversion P. inversion H. exists x. exists (a :: x0). rewrite H0. reflexivity.
  + fold select. assert (P: exists i j, select a l = (i,j)). apply IHl.
  inversion P. inversion H. exists x. exists (a0 :: x0). rewrite H0. reflexivity.
Qed.

Lemma cons_equal_length {T} : forall (l r : list T) (x y : T), length (x :: l) = length (y :: r) -> length l = length r.
Proof. intros. inversion H. reflexivity. Qed.

Lemma select_rest_length : forall x l y r, select x l = (y, r) -> length l = length r.
Proof.
  intros. 
  (* NO HELPER LEMMAS *)
  (* generalize dependent x; generalize dependent y; generalize dependent r. induction l.
  - intros. inversion H. reflexivity.
  - intros. inversion H. destruct (a >=? x).
  + pose (select_exists l x). inversion e. inversion H0. rewrite H2 in H1.
  apply IHl in H2. inversion H1. simpl. auto.
  + pose (select_exists l a). inversion e. inversion H0. rewrite H2 in H1.
  apply IHl in H2. inversion H1. simpl. auto. *)
  
  (* HELPER LEMMAS (FORWARDS REASONING) *)
(*   
  (* HELPER LEMMA - case 3 (non-generalized) *)
  apply select_perm in H.
  (* HELPER LEMMA - case 3 (non-generalized) *)
  apply Permutation_length in H. 
  assumption. *)

  (* HELPER LEMMAS (BACKWARDS REASONING) *)
  (* HELPER LEMMA - case 3 (non-generalized) *)
  eapply cons_equal_length.
  (* HELPER LEMMA - case 2 *)
  eapply Permutation_length.
  (* HELPER LEMMA - case 3 *)
  eapply select_perm.
  eassumption.
Qed.

Lemma selsort_perm: forall n l, length l = n -> Permutation l (selsort l n).
Proof.
  induction n.
  - intros.
    (* HELPER LEMMA - case 3 (in assumption)  *)
    rewrite length_zero_iff_nil in H. subst.
    (* HELPER LEMMA - case 1 *)
    apply Permutation_refl.
  - intros. destruct l. inversion H.
    simpl.  destruct (select n0 l) eqn:Seq.
    apply perm_trans with (n1 :: l0).
    (* HELPER LEMMA - case 3 (non-generalized) *)
    apply select_perm. auto.
    apply perm_skip. apply IHn. inversion H.
    symmetry. 
    (* HELPER LEMMA - case 3 (non-generalized) *)
    eapply select_rest_length. eauto.
    (* apply select_rest_length in Seq. auto. *)
Qed.

Lemma selection_sort_perm: forall l, Permutation l (selection_sort l).
Proof. 
  unfold selection_sort. intros. 
  findlemma. Admitted.

  (* HELPER LEMMA - case 2 *)
  (* apply selsort_perm. reflexivity. 
Qed. *)
