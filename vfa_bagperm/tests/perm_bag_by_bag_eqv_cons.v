From LFindToo Require Import LFindToo.

(** * BagPerm:  Insertion Sort With Bags *)

Require Import vfa_bagperm_benchmarks.Definitions.
From vfa_bagperm_benchmarks Require Import Decide.

Require Import Lia.

Lemma bag_eqv_refl : forall b, bag_eqv b b.
Proof. unfold bag_eqv. intros. reflexivity. Qed.

Lemma bag_eqv_sym: forall b1 b2, bag_eqv b1 b2 -> bag_eqv b2 b1. 
Proof. unfold bag_eqv. intros. symmetry. apply H. Qed.

Lemma bag_eqv_trans: forall b1 b2 b3, bag_eqv b1 b2 -> bag_eqv b2 b3 -> bag_eqv b1 b3.
Proof. unfold bag_eqv. intros. rewrite H. apply H0. Qed.

Lemma bag_eqv_cons : forall x b1 b2, bag_eqv b1 b2 -> bag_eqv (x::b1) (x::b2).
Proof. unfold bag_eqv. intros. simpl. rewrite H. reflexivity. Qed.

Lemma insert_bag: forall x l, bag_eqv (x::l) (insert x l).
Proof.
  unfold bag_eqv. intros. induction l.
  - simpl. reflexivity.
  - simpl. destruct (x <=? a). simpl. reflexivity. simpl. rewrite <- IHl. simpl. lia.
Qed.

Theorem sort_bag: forall l, bag_eqv l (sort l).
  unfold bag_eqv. intros. induction l.
  simpl. reflexivity.
  simpl. 
  (* HELPER LEMMA $ sort_bag_by_insert_bag $ *)
  rewrite <- insert_bag. simpl. rewrite IHl. reflexivity.
Qed.

Lemma perm_bag: forall al bl : list nat, Permutation al bl -> bag_eqv al bl. 
Proof.
  intros. induction H.
  - unfold bag_eqv. intros. reflexivity.
  - (* HELPER LEMMA $ perm_bag_by_bag_eqv_cons $ *)
findlemma. Admitted.
(*
  apply bag_eqv_cons. assumption.
  - unfold bag_eqv. intros. simpl. lia.
  - (* HELPER LEMMA $ perm_bag_by_bag_eqv_trans $ *)
  eapply bag_eqv_trans. eapply IHPermutation1. assumption.
Qed.
*)