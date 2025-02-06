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
        symmetry. 
        findlemma. Admitted.
        
        (* eapply select_rest_length. eauto.
Qed. *)