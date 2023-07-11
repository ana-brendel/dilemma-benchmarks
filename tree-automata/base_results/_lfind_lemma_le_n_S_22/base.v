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
	lfind_debug.
	Admitted.

	(* intros. apply Coq.Init.Peano.le_n_S. apply H.
Qed. *)
