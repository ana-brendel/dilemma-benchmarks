From LFindToo Require Import LFindToo.

Require Import Bool.
Require Import Arith.

Require Import lia_heap_benchmarks.Definitions.
Require Import lia_heap_benchmarks.Decide.

Lemma rank_right_height : forall h : heap,
  has_leftist_property h = true -> rank h = right_height h.
Proof.
  intros.
  induction h.
  - auto.
  - simpl. simpl in H. apply andb_true_iff in H. destruct H. apply Nat.eqb_eq in H0. assumption.
Qed.

Lemma leftist_mergea : forall (v : nat) (l r : heap),
  has_leftist_property l && has_leftist_property r = true
    -> has_leftist_property (mergea v l r) = true.
Proof.
  intros.
  unfold mergea.
  apply andb_true_iff in H. destruct H.
  destruct (Nat.leb_spec (rank r) (rank l)).
  - findlemma. Admitted. 
  
  (* rewrite (rank_right_height r H0) in H1.
    rewrite (rank_right_height l H) in H1.
    simpl. rewrite (rank_right_height r H0).
    apply andb_true_iff. split.
    + apply andb_true_iff. split.
      * rewrite H. rewrite H0. reflexivity.
      * apply Nat.leb_le. assumption.
    + apply Nat.eqb_eq. reflexivity.
  - rewrite (rank_right_height r H0) in H1.
    rewrite (rank_right_height l H) in H1.
    simpl. rewrite (rank_right_height l H).
    apply andb_true_iff. split.
    + apply andb_true_iff. split.
      * rewrite H. rewrite H0. reflexivity.
      * apply Nat.leb_le. apply Nat.lt_le_incl. auto.
    + apply Nat.eqb_eq. reflexivity.
Qed. *)
