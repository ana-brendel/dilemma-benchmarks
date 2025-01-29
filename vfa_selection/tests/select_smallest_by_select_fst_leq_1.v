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
  eapply cons_equal_length.
  eapply Permutation_length.
  eapply select_perm.
  eassumption.
Qed.

Lemma selsort_perm: forall n l, length l = n -> Permutation l (selsort l n).
Proof.
  induction n.
  - intros.
    rewrite length_zero_iff_nil in H. subst.
    apply Permutation_refl.
  - intros. destruct l. inversion H.
    simpl.  destruct (select n0 l) eqn:Seq.
    apply perm_trans with (n1 :: l0).
    apply select_perm. auto.
    apply perm_skip. apply IHn. inversion H.
    symmetry. 
    eapply select_rest_length. eauto.
Qed.

Lemma selection_sort_perm: forall l, Permutation l (selection_sort l).
Proof. 
  unfold selection_sort. intros. 
  apply selsort_perm. reflexivity. 
Qed.

Lemma select_fst_leq: forall al bl x y, select x al = (y, bl) -> y <= x.
Proof.
  intros. 
  unfold select in H.
  generalize dependent x; generalize dependent y; generalize dependent bl. induction al.
  - intros. inversion H. auto.
  - intros. fold select in IHal. fold select in H.  
    bdestruct (x <=? a).
  -- pose (select_exists al x).
    inversion e. inversion H1. rewrite H2 in H. apply IHal with (bl := x1). inversion H. 
    rewrite <- H4. auto.
  -- pose (select_exists al a).
    inversion e. inversion H1. rewrite H2 in H. inversion H. rewrite <- H4.
    apply IHal in H2. inversion H2. unfold gt in H0. lia. lia.
Qed. 

Lemma le_all__le_one : forall lst y n, y <=* lst -> In n lst -> y <= n.
Proof. 
  intros. unfold le_all in H. destruct H.
  - contradiction.
  - apply in_inv in H0. destruct H0.
  -- rewrite <- H0. auto.
  -- eapply Forall_forall. eassumption. assumption.
Qed.

Lemma select_smallest: forall al bl x y, select x al = (y, bl) -> y <=* bl.
Proof.
  intros. unfold le_all. 
  generalize dependent bl; generalize dependent x; generalize dependent y. induction al.
  - intros. inversion H. auto.
  - intros. unfold select in H. bdestruct (x <=? a).
  * fold select in H. pose (select_exists al x). inversion e. inversion H1.
  rewrite H2 in H. inversion H2. apply IHal in H2. inversion H. clear e. clear H1.
  apply Forall_cons.
  ** rewrite H5 in H4. 
  findlemma. Admitted.
  
  (* apply select_fst_leq in H4. lia.
  ** rewrite <- H5. auto.
  * fold select in H. pose (select_exists al a). inversion e. inversion H1. rewrite H2 in H.
  inversion H2.  apply IHal in H2. inversion H. clear e. clear H1.
  apply Forall_cons.
  ** rewrite <- H5. apply select_fst_leq in H4. lia.
  ** rewrite <- H5. auto.
Qed.  *)