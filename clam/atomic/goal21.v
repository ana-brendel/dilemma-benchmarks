Require Import Nat Arith.

Inductive Nat : Type := succ : Nat -> Nat |  zero : Nat.

Inductive Lst : Type := cons : Nat -> Lst -> Lst |  nil : Lst.

Inductive Tree : Type := node : Nat -> Tree -> Tree -> Tree |  leaf : Tree.

Inductive Pair : Type := mkpair : Nat -> Nat -> Pair
with ZLst : Type := zcons : Pair -> ZLst -> ZLst |  znil : ZLst.

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

Fixpoint rotate (rotate_arg0 : Nat) (rotate_arg1 : Lst) : Lst
           := match rotate_arg0, rotate_arg1 with
              | zero, x => x
              | succ n, nil => nil
              | succ n, cons y x => rotate n (append x (cons y nil))
              end.

Lemma append_assoc: forall l1 l2 l3, 
  append l1 (append l2 l3) = append (append l1 l2) l3.
Proof.
induction l1.
  - simpl. intros. rewrite IHl1. reflexivity.
  - reflexivity.
Qed.

Lemma lem3: forall l, append l nil = l.
Proof.
induction l.
  - simpl. rewrite IHl. reflexivity.
  - reflexivity.
Qed.

Theorem theorem0 : forall (x : Lst) (y : Lst), eq (rotate (len x) (append x y)) (append y x).
Proof.
induction x.
- intros. simpl. rewrite <- append_assoc. rewrite IHx. rewrite <- append_assoc. reflexivity.
- intros. simpl. rewrite lem3. reflexivity.
Qed.


