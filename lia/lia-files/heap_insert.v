Require Import Bool.
Require Import Arith.

Inductive lst : Type :=
| Cons : nat -> lst -> lst
| Nil : lst.

Inductive heap : Type :=
| Hleaf : heap
| Heap : nat -> nat -> heap -> heap -> heap.

Fixpoint right_height (h : heap) : nat :=
  match h with
  | Hleaf => 0
  | Heap k v l r => right_height r + 1
  end.

Definition rank (h : heap) : nat :=
  match h with
  | Hleaf => 0
  | Heap k v l r => k
  end.

Fixpoint has_leftist_property (h : heap) : bool :=
  match h with
  | Hleaf => true
  | Heap k v l r =>
    has_leftist_property l
    && has_leftist_property r
    && (right_height r <=? right_height l)
    && (k =? right_height r + 1)
  end.

Fixpoint hsize (h : heap) : nat :=
  match h with
  | Hleaf => 0
  | Heap k v l r => hsize l + hsize r + 1
  end.

Definition mergea (v : nat) (l r : heap) : heap :=
  if rank r <=? rank l
    then Heap (rank r + 1) v l r
    else Heap (rank l + 1) v r l.

Fixpoint merge (h1 : heap) : heap -> heap :=
  fix merge_aux (h2 : heap) : heap :=
  match h1, h2 with
  | h, Hleaf => h
  | Hleaf, h => h
  | Heap k1 v1 l1 r1, Heap k2 v2 l2 r2 =>
    if v2 <? v1
      then mergea v1 l1 (merge r1 (Heap k2 v2 l2 r2))
      else mergea v2 l2 (merge_aux r2)
  end.

Definition hinsert (h : heap) (n : nat) : heap :=
  merge (Heap 1 n Hleaf Hleaf) h.

(* Require Coq.extraction.Extraction.

Recursive Extraction hinsert. *)

Lemma hsize_nonneg : forall h : heap, hsize h >= 0.
Proof.
  (* This lemma is trivial since we use nat instead of Int. *)
  intros.
  induction (hsize h).
  - auto.
  - auto.
Qed.

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
    apply le_Sn_le in H1.
    apply andb_true_iff. split.
    + apply andb_true_iff. split.
      * rewrite H. rewrite H0. reflexivity.
      * apply Nat.leb_le. assumption.
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