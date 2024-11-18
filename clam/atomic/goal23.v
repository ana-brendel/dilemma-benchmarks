Require Import Nat Arith.

Inductive Nat : Type := succ : Nat -> Nat |  zero : Nat.

Inductive Lst : Type := cons : Nat -> Lst -> Lst |  nil : Lst.

Inductive Tree : Type := node : Nat -> Tree -> Tree -> Tree |  leaf : Tree.

Inductive Pair : Type := mkpair : Nat -> Nat -> Pair
with ZLst : Type := zcons : Pair -> ZLst -> ZLst |  znil : ZLst.

Fixpoint half (half_arg0 : Nat) : Nat
           := match half_arg0 with
              | zero => zero
              | succ zero => zero
              | succ (succ n) => succ (half n)
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

Lemma lem3: forall l, append l nil = l.
Proof.
induction l.
  - simpl. rewrite IHl. reflexivity.
  - reflexivity.
Qed.

Lemma lem2: forall l1 l2 n, succ (len (append l1 l2)) = len (append l1 (cons n l2)).
Proof.
induction l1.
- intros. simpl. rewrite <- IHl1. reflexivity.
- intros. reflexivity.
Qed.

Lemma lem: forall l1 l2, len (append l1 l2) = len (append l2 l1).
induction l1.
  - intros. simpl. rewrite IHl1. rewrite <- lem2. reflexivity.
  - intros. simpl. rewrite lem3. reflexivity.
Qed.

Theorem theorem0 : forall (x : Lst) (y : Lst), eq (half (len (append x y))) (half (len (append y x))).
Proof.
intros. f_equal. apply lem.
Qed.
