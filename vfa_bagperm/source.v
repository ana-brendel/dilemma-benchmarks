(** * BagPerm:  Insertion Sort With Bags *)

(* From Coq Require Import Setoid Morphisms. *)

Require Import vfa_bagperm_benchmarks.Definitions.
Require Import vfa_bagperm_benchmarks.Decide.

Lemma bag_eqv_refl : forall b, bag_eqv b b.
Proof.
(* FILL IN HERE *) Admitted.

Lemma bag_eqv_sym: forall b1 b2, bag_eqv b1 b2 -> bag_eqv b2 b1. 
Proof.
(* FILL IN HERE *) Admitted.

Lemma bag_eqv_trans: forall b1 b2 b3, bag_eqv b1 b2 -> bag_eqv b2 b3 -> bag_eqv b1 b3.
Proof.
(* FILL IN HERE *) Admitted.

Lemma bag_eqv_cons : forall x b1 b2, bag_eqv b1 b2 -> bag_eqv (x::b1) (x::b2).
Proof.
  (* FILL IN HERE *) Admitted.

(* Definition is_a_sorting_algorithm' (f: list nat -> list nat) := forall al, bag_eqv al (f al) /\ sorted (f al). *)

Lemma insert_bag: forall x l, bag_eqv (x::l) (insert x l).
Proof.
(* FILL IN HERE *) Admitted.

Theorem sort_bag: forall l, bag_eqv l (sort l).
(* FILL IN HERE *) Admitted.

(* Theorem insertion_sort_correct: is_a_sorting_algorithm' sort.
Proof. split. apply sort_bag. apply sort_sorted. Qed. *)

Lemma perm_bag: forall al bl : list nat, Permutation al bl -> bag_eqv al bl. 
(* FILL IN HERE *) Admitted.

Lemma bag_nil_inv : forall b, bag_eqv [] b -> b = []. 
Proof.
  (* FILL IN HERE *) Admitted.

Lemma bag_cons_inv : forall l x n, S n = count x l -> exists l1 l2, l = l1 ++ x :: l2 /\ count x (l1 ++ l2) = n.
Proof.
  (* FILL IN HERE *) Admitted.

Lemma count_insert_other : forall l1 l2 x y, y <> x -> count y (l1 ++ x :: l2) = count y (l1 ++ l2).
Proof.
  (* FILL IN HERE *) Admitted.

Lemma bag_perm:
  forall al bl, bag_eqv al bl -> Permutation al bl.
Proof.
(* FILL IN HERE *) Admitted.

Theorem bag_eqv_iff_perm: forall al bl, bag_eqv al bl <-> Permutation al bl.
Proof.
  intros. split. apply bag_perm. apply perm_bag.
Qed.

(* Corollary sort_specifications_equivalent: forall sort, is_a_sorting_algorithm sort <->  is_a_sorting_algorithm' sort.
Proof.
  unfold is_a_sorting_algorithm, is_a_sorting_algorithm'.
  split; intros;
  destruct (H al); split; auto;
  apply bag_eqv_iff_perm; auto.
Qed. *)
