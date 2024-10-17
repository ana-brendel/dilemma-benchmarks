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
  (* HELPER LEMMA - case 2 *)
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
    apply IHal in H2. inversion H2. unfold gt in H0.
    (* HELPER LEMMA - case 3 (non-generalized) *)
    apply Nat.lt_succ_r.
    (* HELPER LEMMA - case 3 (non-generalized) *)
    apply Nat.lt_lt_succ_r. auto. 
    unfold gt in H0.
    (* HELPER LEMMA - case 3 (non-generalized) *)
    apply Nat.lt_succ_r. 
    (* HELPER LEMMA - case 3 (non-generalized) *)
    apply Nat.lt_lt_succ_r.
    (* HELPER LEMMA - case 3 (non-generalized) *)
    apply Nat.le_lt_trans with (m := a). auto. auto.
Qed. 

Lemma le_all__le_one : forall lst y n, y <=* lst -> In n lst -> y <= n.
Proof. 
  intros. unfold le_all in H. destruct H.
  - contradiction.
  - (* HELPER LEMMA - case 3 (non-generalized (in assumption)) *)
  apply in_inv in H0. destruct H0.
  -- rewrite <- H0. auto.
  -- (* HELPER LEMMA - case 3 (non-generalized) --> maybe consider generalizing propositions *)
  eapply Forall_forall. eassumption. assumption.
Qed.

(* I think this is a good example of where forward reasoning makes targeting lemmas easier *)
Lemma select_smallest: forall al bl x y, select x al = (y, bl) -> y <=* bl.
Proof.
  intros. unfold le_all. 
  generalize dependent bl; generalize dependent x; generalize dependent y. induction al.
  - intros. inversion H. auto.
  - intros. unfold select in H. bdestruct (x <=? a).
  * fold select in H. pose (select_exists al x). inversion e. inversion H1.
  rewrite H2 in H. inversion H2. apply IHal in H2. inversion H. 
  (* HELPER LEMMA - case 2 (? - if we could generalize a function) *)
  apply Forall_cons.
  ** (* HELPER LEMMA - case 3 (non-generalized) *)
  apply Nat.le_trans with (m:=x). rewrite <- H5.
  (* HELPER LEMMA - case 3 (non-generalized) *)
  eapply select_fst_leq. eauto. auto.
  ** rewrite <- H5. auto.
  * fold select in H. pose (select_exists al a). inversion e. inversion H1. rewrite H2 in H.
  inversion H2.  apply IHal in H2. inversion H. 
  (* HELPER LEMMA - case 2 (? - if we could generalize a function) *)
  apply Forall_cons.
  ** rewrite <- H5. 
  (* HELPER LEMMA - case 3 (non-generalized) *)
  apply PeanoNat.lt_n_Sm_le.
  (* HELPER LEMMA - case 3 (non-generalized) *)
  apply Nat.lt_lt_succ_r.
  (* HELPER LEMMA - case 3 (non-generalized) *) 
  apply Nat.le_lt_trans with (m:=a).
  (* HELPER LEMMA - case 3 (non-generalized) *) 
  eapply select_fst_leq. eauto. auto.
  ** rewrite <- H5. auto.
Qed. 
   
Lemma select_in : forall al bl x y, select x al = (y, bl) -> In y (x :: al).
Proof. intros.
  generalize dependent bl; generalize dependent x; generalize dependent y. induction al.
  - intros. inversion H. simpl. left. reflexivity.
  - intros. 
  * inversion H. bdestruct (x <=? a). 
  ** simpl. apply or_comm. apply or_assoc. 
  right. apply or_comm.
  (* HELPER LEMMA - case 3 (non-generalized) *)
  apply in_inv.
  pose (select_exists al x). inversion e. inversion H2. rewrite H3 in H1. 
  inversion H1. eapply IHal. rewrite <- H5. eauto.
  ** (* HELPER LEMMA - case 2 *)
  eapply Permutation_in. 
  (* HELPER LEMMA - case 2 *)
  apply Permutation_sym. 
  (* HELPER LEMMA - case 3 (generalized) *)
  eapply select_perm. eassumption.
  simpl. left. auto.
Qed.

Lemma cons_of_small_maintains_sort: forall bl y n,
  n = length bl -> y <=* bl -> sorted (selsort bl n) -> sorted (y :: selsort bl n).
Proof.
  intros. 
  (* symmetry in H. apply selsort_perm in H.  *)
  induction (selsort bl n) eqn:K.
  - apply sorted_1.
  - apply sorted_cons.
  (* HELPER LEMMA - case 3 (non-generalized) *)
  eapply le_all__le_one. eauto. 
  (* HELPER LEMMA - case 3 (non-generalized) *)
  apply Permutation_in with (l := selsort bl n). 
  (* HELPER LEMMA - case 3 (non-generalized) *)
  findlemma. Admitted.

  (* apply Permutation_sym.
  (* HELPER LEMMA - case 3 (non-generalized) *) 
  apply selsort_perm. eauto.
  rewrite K.  simpl. auto. 
  auto.
Qed. *)
