Load LFindLoad.
From lfind Require Import LFind.
Unset Printing Notations.
Set Printing Implicit.
(* Benchmarks from CoqGym/coq_projects/tree-automata: 
    https://github.com/princeton-vl/CoqGym/blob/master/coq_projects/tree-automata/bases.v  *)

Require Import Arith.
Require Import BinNat.
From IntMap Require Import Allmaps.
	 
Lemma Neqb_complete p q : N.eqb p q = true -> p = q.
Proof. intros. rewrite <- N.eqb_eq. apply H. Qed.


Lemma nat_sum : forall n : nat, n = 0 \/ (exists m : nat, n = S m).
Proof.
	simple induction n. left. reflexivity. intros. right.
	split with n0. reflexivity.
Qed.

(* Helper Lemma = le_n_S, ∀ n m: n ≤ m → S n ≤ S m *)
Lemma le_n_n : forall n : nat, n <= n.
Proof.
        simple induction n. trivial.
        intros. apply Coq.Init.Peano.le_n_S. apply H.
Qed.

(* Helper Lemma = Nat.lt_le_incl, ∀ n m : nat, n < m → n ≤ m  *)
(* Helper Lemma = Nat.le_gt_cases,  ∀ n m : nat, n ≤ m ∨ m < n *)
Lemma le_l_or_r : forall n m : nat, n <= m \/ m <= n.
Proof.
	intros. cut (n <= m \/ m < n). intros. elim H.
	intros. left. assumption.
	intros. right. 
	apply Nat.lt_le_incl. apply H0.
	lfind_debug.
	Admitted.

	(* apply Nat.le_gt_cases.
Qed. *)
