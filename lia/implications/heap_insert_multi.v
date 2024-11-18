
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
  - rewrite (rank_right_height r H0) in H1.
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
Qed.

Lemma leftist_merge : forall h1 h2 : heap,
  has_leftist_property h1 && has_leftist_property h2 = true
    -> has_leftist_property (merge h1 h2) = true.
Proof.
  intro h1.
  induction h1.
  - intros. destruct h2.
    + reflexivity.
    + simpl. simpl in H. assumption.
  - intros. induction h2.
    + simpl. apply andb_true_iff in H. destruct H. simpl in H. assumption.
    + apply andb_true_iff in H. destruct H. simpl in H. apply andb_true_iff in H. destruct H. apply andb_true_iff in H. destruct H. apply andb_true_iff in H. destruct H. simpl. destruct (n2 <? n0).
      * apply leftist_mergea. apply andb_true_iff. split.
        -- assumption.
        -- apply IHh1_2. rewrite H3. rewrite H0. reflexivity.
      * simpl in H0. apply andb_true_iff in H0. destruct H0. apply andb_true_iff in H0. destruct H0. apply andb_true_iff in H0. destruct H0. simpl in IHh2_2. apply leftist_mergea. apply andb_true_iff. split.
        -- assumption.
        -- apply IHh2_2. rewrite H. rewrite H3. rewrite H2. rewrite H1. rewrite H6. reflexivity.
Qed.

Theorem leftist_hinsert : forall (x : heap) (n : nat),
  has_leftist_property x = true -> has_leftist_property (hinsert x n) = true.
Proof.
  intros. unfold hinsert. apply leftist_merge. apply andb_true_iff. split.
  - unfold has_leftist_property. reflexivity.
  - assumption.
Qed.

Theorem leftist_hinsert_mulit : forall (l : lst) (h : heap), (has_leftist_property h) = true -> (has_leftist_property (hinsert_all l h)) = true.
Proof.
  intros.
  induction l.
  - simpl. apply leftist_hinsert. assumption.
  - simpl. assumption.
Qed.