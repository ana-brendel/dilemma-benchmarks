(** * Selection:  Selection Sort *)
(* Some proofs from: https://github.com/kolya-vasiliev/verified-functional-algorithms-2019/blob/master/Selection.v *)

(* From LFindToo Require Import LFindToo. *)

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
    induction al.
    - intros. inversion H. reflexivity.
    - intros. inversion H. bdestruct (x <=? a).
    -- destruct (select x al) eqn:Q. 
    eapply IHal. rewrite Q. 
    inversion H1. exists.
    -- destruct (select a al) eqn:Q. 
    apply IHal in Q. inversion H1. lia.
Qed.

Lemma le_all__le_one : forall lst y n, y <=* lst -> In n lst -> y <= n.
Proof. 
    intros. unfold le_all in H. destruct H.
    - contradiction.
    - inversion H0. 
    -- lia.
    -- (* HELPER LEMMA $ le_all__le_one_by_Forall_forall $ *)
    eapply Forall_forall. eassumption. eassumption.
Qed.

Lemma select_smallest: forall al bl x y, select x al = (y, bl) -> y <=* bl.
Proof. 
    intros al. induction al.
    - intros. inversion H. unfold le_all. apply Forall_nil.
    - intros. unfold select in H. bdestruct (x <=? a).
    -- fold select in H. destruct (select x al) eqn:Q. inversion Q. apply IHal in Q.
    (* HELPER LEMMA $ select_smallest_by_select_fst_leq_1 $ *)
    (* inversion H. apply Forall_cons. apply select_fst_leq in H2. lia. subst. assumption. *)
    apply select_fst_leq in H2. inversion H. rewrite <- H3. apply Forall_cons. lia. assumption.
    -- fold select in H. destruct (select a al) eqn:Q. inversion Q. apply IHal in Q.
    (* inversion H. apply Forall_cons. apply select_fst_leq in H2. lia. subst. assumption. *)
    (* HELPER LEMMA $ select_smallest_by_select_fst_leq_2 $ *)
    apply select_fst_leq in H2. inversion H. rewrite <- H3. apply Forall_cons. lia. assumption.
Qed.
   
Lemma select_in : forall al bl x y, select x al = (y, bl) -> In y (x :: al).
Proof.
    intros.
    (* HELPER LEMMA $ select_in_by_select_perm $ *)
    apply select_perm in H.
    (* HELPER LEMMA $ select_in_by_Permutation_in $ *)
    eapply Permutation_in.
    symmetry in H.
    eassumption.
    simpl. left. reflexivity.
Qed.

Lemma cons_of_small_maintains_sort: forall bl y n,
  n = length bl -> y <=* bl -> sorted (selsort bl n) -> sorted (y :: selsort bl n).
Proof.
    intros. induction (selsort bl n) eqn:K.
    - apply sorted_1.
    - apply sorted_cons.
    -- (* HELPER LEMMA $ cons_of_small_maintains_sort_ind_list_by_le_all__le_one $ *)
    eapply le_all__le_one. eauto.
    (* HELPER LEMMA $ cons_of_small_maintains_sort_ind_list_by_Permutation_in $ *) 
    apply Permutation_in with (l := selsort bl n).
    symmetry.
    (* HELPER LEMMA $ cons_of_small_maintains_sort_ind_list_by_selsort_perm $ *)
    apply selsort_perm. eauto.
    rewrite K. simpl. auto. 
    -- assumption.
Qed.

Lemma cons_of_small_maintains_sort_ind_length: forall bl y n,
  n = length bl -> y <=* bl -> sorted (selsort bl n) -> sorted (y :: selsort bl n).
Proof.
    intros bl y n. revert bl; revert y. induction n.
    - intros. destruct bl. apply sorted_1. simpl in H. lia.
    - intros. simpl. destruct bl.
    -- apply sorted_1.
    -- simpl in H. inversion H. destruct (select n0 bl) eqn:Q. inversion Q.
    (* HELPER LEMMA $ cons_of_small_maintains_sort_ind_length_by_select_in $ *)
    apply select_in in Q. 
    apply sorted_cons. 
    (* HELPER LEMMA $ cons_of_small_maintains_sort_ind_length_by_le_all__le_one $ *)
    eapply le_all__le_one. eassumption. eassumption.
    rewrite <- H3. apply IHn.
    --- rewrite H3. 
    (* HELPER LEMMA $ cons_of_small_maintains_sort_ind_length_by_select_rest_length $ *)
    eapply select_rest_length. eassumption.
    --- (* HELPER LEMMA $ cons_of_small_maintains_sort_ind_length_by_select_smallest $ *)
    eapply select_smallest. eassumption.
    --- simpl in H1. rewrite H4 in H1. inversion H1. apply sorted_nil. assumption.
Qed.

Lemma selsort_sorted : forall n al, length al = n -> sorted (selsort al n).
Proof.
  intros. generalize dependent al. induction n.
  - intros. assert (P : al = []). destruct al. auto. simpl in H. inversion H. 
  rewrite P. simpl. apply sorted_nil.
  - intros. destruct al. simpl in H. inversion H.
  simpl in H. inversion H. simpl. pose (select_exists al n0).
  inversion e. inversion H0.
  rewrite H2. 
  (* HELPER LEMMA $ selsort_sorted_by_cons_of_small_maintains_sort $ *)
  apply cons_of_small_maintains_sort.
  + (* HELPER LEMMA $ selsort_sorted_by_select_rest_length_1 $ *)
    eapply select_rest_length. eauto.
  + (* HELPER LEMMA $ selsort_sorted_by_select_smallest $ *)
    eapply select_smallest. eauto.
  + rewrite H1. apply IHn. rewrite <- H1. symmetry.
  (* HELPER LEMMA $ selsort_sorted_by_select_rest_length_2 $ *)
    eapply select_rest_length. eauto.
Qed. 

Lemma selection_sort_sorted : forall al, sorted (selection_sort al).
Proof.
    unfold selection_sort. intros.
    (* HELPER LEMMA $ selection_sort_sorted_by_selsort_sorted $ *)
    apply selsort_sorted. reflexivity.
Qed.

(* These are just two lemmas that make up the "is_a_sorting_algorithm" predicate *)
Theorem selection_sort_is_correct : is_a_sorting_algorithm selection_sort.
Proof.
  unfold is_a_sorting_algorithm. intros. split.
  (* HELPER LEMMA $ selection_sort_is_correct_by_selection_sort_perm $ *)
  apply selection_sort_perm. 
  (* HELPER LEMMA $ selection_sort_is_correct_by_selection_sort_sorted $ *)
  apply selection_sort_sorted.
Qed.

(* ################################################################# *)
(** * Recursive Functions That are Not Structurally Recursive *)

Require Import Recdef.  (* needed for [measure] feature *)

Function selsortt l {measure length l} :=
  match l with
  | [] => []
  | x :: r => let (y, r') := select x r
            in y :: selsortt r'
end.
Proof.
  intros l x r HL y r' Hsel.
  apply select_rest_length in Hsel. rewrite <- Hsel. simpl. auto.
Defined.

Lemma selsortt_perm : forall n l, length l = n -> Permutation l (selsortt l).
Proof.
  induction n.
  - intros. rewrite length_zero_iff_nil in H. subst. apply Permutation_refl.
  - intros. destruct l. inversion H. rewrite selsortt_equation. 
    destruct (select n0 l) eqn:Seq. apply perm_trans with (n1 :: l0).
    + pose (select_perm n0 l). rewrite Seq in p. apply p. auto.
    + apply perm_skip. apply IHn. simpl in H. inversion H. 
    symmetry. eapply select_rest_length. eauto.
    (* This is how dude from GitHub did it below *)
    (* + apply perm_skip. apply IHn. assert (length (n0::l) = (length (n1::l0))).
    { 
      apply Permutation_length.
      pose (select_perm n0 l).
      rewrite Seq in p.
      apply p. auto.
    } inversion H0. inversion H. reflexivity. *)
  Qed.

Lemma list_has_length {T} (l : list T): exists x, length l = x.
Proof. induction l. exists 0. reflexivity. inversion IHl. exists (S x). simpl. auto.
Qed.

Lemma cons_of_small_maintains_sortt: forall bl y,
    y <=* bl -> sorted (selsortt bl) -> sorted (y :: selsortt bl).
Proof. 
  intros. assert (L: exists x, length bl = x). apply list_has_length.
  inversion L. apply selsortt_perm in H1. induction (selsortt bl).
  - apply sorted_1.
  - apply sorted_cons. eapply le_all__le_one. eauto. eapply Permutation_in. 
  apply Permutation_sym. eauto. simpl. auto. auto.
Qed.

Lemma selsortt_sorted : forall n al, length al = n -> sorted (selsortt al).
Proof. 
  intros. generalize dependent al. induction n.
  - intros. assert (P : al = []). destruct al. auto. simpl in H. inversion H. 
  rewrite P. simpl. apply sorted_nil.
  - intros. destruct al. simpl in H. inversion H.
  simpl in H. inversion H. simpl. pose (select_exists al n0).
  inversion e. inversion H0. rewrite selsortt_equation. rewrite H2. apply cons_of_small_maintains_sortt.
  + eapply select_smallest. eauto.
  + apply IHn. rewrite <- H1. symmetry. eapply select_rest_length. eauto.
Qed. 

Theorem selsortt_is_correct :
  is_a_sorting_algorithm selsortt.
Proof. 
  unfold is_a_sorting_algorithm. intros. assert (E: exists x, length al = x). apply list_has_length.
  inversion E. split.
  eapply selsortt_perm. eauto.
  eapply selsortt_sorted. eauto.
Qed.

(* ################################################################# *)
(** * Selection Sort with Multisets (Optional) *)

(** This section relies on [Multiset] --> don't have decidability for *)

From VFA Require Import Multiset.

Lemma select_contents : forall al bl x y,
  select x al = (y, bl) ->
  union (singleton x) (contents al) = union (singleton y) (contents bl).
Proof. (* FILL IN HERE *) Admitted.

Lemma selection_sort_contents : forall n l,
  length l = n ->
  contents l = contents (selection_sort l).
Proof. (* FILL IN HERE *) Admitted.

Lemma sorted_iff_sorted : forall l, sorted l <-> Sort.sorted l.
Proof. (* FILL IN HERE *) Admitted.

Theorem selection_sort_correct' :
  is_a_sorting_algorithm' selection_sort.
Proof. (* FILL IN HERE *) Admitted.