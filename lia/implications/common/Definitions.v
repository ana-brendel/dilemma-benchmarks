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

Fixpoint hinsert_all (hinsert_all_arg0 : lst) (hinsert_all_arg1 : heap) : heap
           := match hinsert_all_arg0, hinsert_all_arg1 with
              | Nil, h => h
              | Cons n l, h => hinsert (hinsert_all l h) n
              end.