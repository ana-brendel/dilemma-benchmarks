Require Import Nat Arith.

Inductive Nat : Type := succ : Nat -> Nat |  zero : Nat.

Inductive Lst : Type := cons : Nat -> Lst -> Lst |  nil : Lst.

Inductive Tree : Type := node : Nat -> Tree -> Tree -> Tree |  leaf : Tree.

Inductive Pair : Type := mkpair : Nat -> Nat -> Pair
with ZLst : Type := zcons : Pair -> ZLst -> ZLst |  znil : ZLst.

Fixpoint plus (plus_arg0 : Nat) (plus_arg1 : Nat) : Nat
           := match plus_arg0, plus_arg1 with
              | zero, n => n
              | succ n, m => succ (plus n m)
              end.

Fixpoint append (append_arg0 : Lst) (append_arg1 : Lst) : Lst
           := match append_arg0, append_arg1 with
              | nil, x => x
              | cons x y, z => cons x (append y z)
              end.

Fixpoint len (len_arg0 : Lst) : Nat
           := match len_arg0 with
              | nil => zero
              | cons x y => succ (len y)
              end.

Fixpoint rev (rev_arg0 : Lst) : Lst
           := match rev_arg0 with
              | nil => nil
              | cons x y => append (rev y) (cons x nil)
              end.

Theorem len_append: forall (l1 l2: Lst), len (append l1 l2) = plus (len l1) (len l2).
Proof.
  induction l1; induction l2; simpl.
  { f_equal. rewrite IHl1. simpl. reflexivity. }
  { f_equal. rewrite IHl1. simpl. reflexivity. }
  { reflexivity. }
  { reflexivity. }
Qed.

Theorem plus_comm: forall (n m: Nat), plus n m = plus m n.
Proof.
  induction n; induction m.
  { simpl. rewrite IHn. rewrite <- IHm. simpl. rewrite IHn. reflexivity. }
  { simpl. rewrite IHn. simpl. reflexivity. }
  { simpl. rewrite <- IHm. simpl. reflexivity. }
  { reflexivity. }
Qed.

Theorem len_rev: forall (l: Lst), len (rev l) = len l.
Proof.
  induction l; simpl.
  { rewrite len_append. rewrite plus_comm. simpl. f_equal. assumption. }
  { reflexivity. }
Qed.

Theorem theorem0 : forall (x : Lst) (y : Lst), eq (len (rev (append x y))) (plus (len x) (len y)).
Proof.
  intros.
  rewrite len_rev.
  apply len_append.
Qed.
