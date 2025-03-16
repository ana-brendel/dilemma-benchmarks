(** * Selection:  Selection Sort *)
(* Some proofs from: https://github.com/kolya-vasiliev/verified-functional-algorithms-2019/blob/master/Selection.v *)

From LFindToo Require Import LFindToo.

Require Import vfa_selection_benchmarks.Definitions.
From vfa_selection_benchmarks Require Import Decide.

(* These specify the libraries of functions that should be considered during synthesis that 
    are not defined within the above libraries. *)
Require Import Coq.Lists.List.
Require Import Coq.Sorting.Permutation. 

(* ################################################################# *)

Lemma select_perm: forall x l y r, select x l = (y, r) -> Permutation (x :: l) (y :: r).
Proof. 
    intros x l; revert x.
    induction l.
    - simpl. intros. inversion H. auto.
    - simpl. intros. bdestruct (x <=? a).
    -- destruct (select x l) eqn:Q. inversion H.
    apply perm_trans with (a :: y :: l0).
    apply perm_trans with (a :: x :: l).
    apply perm_swap.
    apply perm_skip. apply IHl. rewrite <- H2. assumption.
    apply perm_swap.
    -- specialize (IHl a). destruct (select a l) eqn:Q. 
    inversion H.
    apply perm_trans with (x :: y :: l0).
    apply perm_skip. apply IHl. rewrite H2. reflexivity.
    apply perm_swap.
Qed.

Lemma select_rest_length : forall x l y r, select x l = (y, r) -> length l = length r.
Proof.
    intros x l; revert x. induction l.
    - intros. inversion H. reflexivity.
    - intros. inversion H. destruct (x <=? a).
    + destruct (select x l) eqn:Q. inversion H1. simpl. f_equal. eapply IHl. eauto.
    + destruct (select a l) eqn:Q. inversion H1. simpl. f_equal. eapply IHl. eauto.

    (* intros. 
    apply select_perm in H.
    apply Permutation_length in H. 
    auto. *)
Qed.

Lemma selsort_perm: forall n l, length l = n -> Permutation l (selsort l n).
Proof.
    induction n.
    - intros. destruct l. auto. inversion H.
    - intros. destruct l. 
    -- inversion H.
    -- (* STUCK -- decide to use lemma here *)
    simpl.
    destruct (select n0 l) eqn: Q.
    apply perm_trans with (n1 :: l0).
    --- apply select_perm. assumption.
    --- apply perm_skip. apply IHn. inversion H.
        symmetry. eapply select_rest_length. eauto.
Qed.

Lemma selection_sort_perm: forall l, Permutation l (selection_sort l).
Proof. 
    intros. 
    unfold selection_sort. 
    apply selsort_perm. 
    reflexivity.
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
    -- eapply Forall_forall. eassumption. eassumption.
Qed.

Lemma helper: forall al l x y, (select x al = (y, l) -> y <=* x :: al). Proof. Admitted.

Lemma select_smallest: forall al bl x y, select x al = (y, bl) -> y <=* bl.
Proof. 
    intros al. induction al.
    - intros. inversion H. unfold le_all. apply Forall_nil.
    - intros. unfold select in H. bdestruct (x <=? a).
    -- fold select in H. destruct (select x al) eqn:Q. inversion Q. apply IHal in Q.
    (* inversion H. clear H. rewrite <- H3. clear H3. clear H4. *)
    findlemma. Admitted.

    (* apply select_fst_leq in H2. inversion H. rewrite <- H3. apply Forall_cons. lia. assumption.
    -- fold select in H. destruct (select a al) eqn:Q. inversion Q. apply IHal in Q.
    apply select_fst_leq in H2. inversion H. rewrite <- H3. apply Forall_cons. lia. assumption.
Qed. *)