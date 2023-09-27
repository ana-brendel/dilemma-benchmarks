Require Import Arith.
Inductive tree : Type :=
  | Leaf : tree
  | Node : nat -> tree -> tree -> tree.

Inductive lst : Type :=
  | Nil : lst
  | Cons : nat -> lst -> lst.

Fixpoint ltb (m n : nat) : bool :=
match (m, n) with
  | (_, 0) => false
  | (0, _) => true
  | (S m', S n') => ltb m' n'
end.

Fixpoint tinsert (t : tree) (i : nat) : tree :=
match t with
| Leaf => Node i Leaf Leaf
| Node d l r => if ltb d i then Node d l (tinsert r i) else Node d (tinsert l i) r
end.

Fixpoint tinsert_all (t : tree) (l : lst) : tree :=
match l with 
| Nil => t
| Cons n l' => tinsert (tinsert_all t l') n
end.

Fixpoint tsize (t : tree) : nat :=
match t with
| Leaf => 0
| Node d l r => 1 + (tsize l) + (tsize r)
end.

Fixpoint leb (n m : nat) : bool :=
match (n, m) with
  | (0, _) => true
  | (S n', S m') => leb n' m'
  | _ => false
end. 

Lemma leb_refl : forall n, leb n n = true.
Proof.
induction n. reflexivity. simpl. apply IHn.
Qed.

Lemma leb_m_Sn : forall m n, leb m n = true -> leb m (S n) = true.
Proof.
induction m.
- intros. reflexivity.
- intros. simpl. destruct n.
  + inversion H.
  + apply IHm. simpl in H. apply H.
Qed.

Lemma helper : forall t n, (tsize (tinsert t n)) = S (tsize t).
Proof.
intros. induction t.
- reflexivity.
- simpl. destruct (ltb n0 n).
  + simpl. rewrite IHt2. rewrite <- plus_n_Sm. reflexivity.
  + simpl. rewrite IHt1. reflexivity.
Qed.


Theorem tree_insert_all : forall l t,  (tsize t)  <= (tsize (tinsert_all t l)).
Proof.
  intros. induction l.
  - simpl. auto with arith.
  - simpl. rewrite IHl.
    rewrite helper. auto.
Qed.
