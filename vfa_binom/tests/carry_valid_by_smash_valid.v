From LFindToo Require Import LFindToo.

Require Import vfa_binom_benchmarks.Definitions.
From vfa_binom_benchmarks Require Import Decide.


(* These specify the libraries of functions that should be considered during synthesis that 
    are not defined within the above libraries. *)
Require Import Coq.Lists.List.
Require Import Coq.Sorting.Permutation. 

(* ################################################################# *)
(** * Proof of Algorithm Correctness *)

Lemma smash_valid_helper1: forall k k2: nat, (k >? k2) = true -> k >= k2.
Proof.
    intros.
    apply Nat.ltb_lt in H.
    unfold ">=".
    apply Nat.lt_le_incl.
    assumption.
Qed.

Lemma smash_valid_helper2: forall k k2: nat, (k >? k2) = false -> k2 >= k.
Proof.
    intros.
    unfold ">=".
    apply Nat.ltb_ge.
    assumption.
Qed.

Theorem smash_valid: forall n t u, pow2heap n t -> pow2heap n u -> pow2heap (S n) (smash t u).
Proof.
  intros.
  destruct t; destruct u.
  - simpl.
  destruct t2; destruct u2; auto.
  destruct (n0 >? n1) eqn:k_eq.
  simpl. split; auto.
  (* HELPER LEMMA $ smash_valid_by_smash_valid_helper1 $ *)
  apply smash_valid_helper1.
  assumption.
  simpl. split; auto.
  (* HELPER LEMMA $ smash_valid_by_smash_valid_helper2 $ *)
  apply smash_valid_helper2.
  assumption.
  - inversion H0. - inversion H. - inversion H. 
Qed.

Theorem carry_valid: forall n q,  priqq n q -> forall t, (t=Leaf \/ pow2heap n t) -> priqq n (carry q t).
Proof.
    intros n q H. generalize dependent n. induction q. 
    + destruct t. simpl. split. right. inversion H0. contradict H1. discriminate. 
    simpl in H1. assumption. auto. simpl. auto.
    + intros. destruct H0. 
    ++ simpl. destruct a. rewrite H0. assumption. rewrite H0. assumption.
    ++ destruct a. simpl. destruct t. split. left. reflexivity. apply IHq. inversion H. assumption. right.
    (* HELPER LEMMA $ carry_valid_by_smash_valid $ *)
findlemma. Admitted.
(*
    apply smash_valid. assumption. destruct H.
    destruct H. discriminate H. assumption. assumption. simpl.
    split. auto. simpl in H. destruct H. auto.
Qed.
*)