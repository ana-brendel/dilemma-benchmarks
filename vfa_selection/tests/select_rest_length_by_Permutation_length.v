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
    intros. 
    apply select_perm in H.
    findlemma. Admitted.

    (* apply Permutation_length in H. 
    auto.
Qed. *)
