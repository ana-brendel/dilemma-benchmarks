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
        apply Nat.le_gt_cases.
Qed.

(* Already solved helper lemma in clam *)
Lemma S_plus_l : forall n m : nat, S (n + m) = S n + m.
 Proof.
       simpl in |- *. trivial.
 Qed.
 
 (* Already solved helper lemma in clam *)
 Lemma S_plus_r : forall n m : nat, S (n + m) = n + S m.
 Proof.
       intros. rewrite (Nat.add_comm n (S m)). rewrite (Nat.add_comm n m).
       simpl in |- *. trivial.
 Qed.

(* Helper Lemma = Nat.le_succ_diag_r, ∀ n : nat, n ≤ S n *)
(* Helper Lemma = Nat.le_0_l, ∀ n : nat, 0 ≤ n *)
(* Helper Lemma = max_l, ∀ n m : nat, m ≤ n → Init.Nat.max n m = n *)
(* Helper Lemma = le_n_n, ∀ n : nat, n ≤ n *)
(* Helper Lemma = le_n_S, ∀ n m: n ≤ m → S n ≤ S m *)
Lemma max_le_Sr_0 : forall n m : nat, max n m <= max n (S m) /\ max (S n) m <= max (S n) (S m).
Proof.
	simple induction n; simple induction m. 
    simpl in |- *. split. 
    apply Nat.le_succ_diag_r. 
    apply le_n_n.
	intros. split. elim H. intros. intros. simpl in |- *. 
	lfind_debug.
	Admitted.

    (* apply Nat.le_succ_diag_r. 
	elim H. intros. simpl in |- *. 
    apply Nat.le_succ_diag_r. 
	split. simpl in |- *. 
    cut (max n0 0 = n0). intros. rewrite H0. trivial.
	rewrite max_l. reflexivity. 
    apply Nat.le_0_l.
 	simpl in |- *. 
    apply le_n_n.
	intros. elim H0. intros. split. simpl in |- *. elim (H n1). intros.
    apply le_n_S.
	cut (max (S (S n0)) (S n1) = S (max (S n0) n1)).
	cut (max (S (S n0)) (S (S n1)) = S (max (S n0) (S n1))).
	intros. rewrite H3.
    apply le_n_n.
    elim (H (S n1)).
	intros. elim (H n1). intros. simpl. reflexivity.
    reflexivity.
    apply le_n_S in H1. apply H1. 
Qed. *)