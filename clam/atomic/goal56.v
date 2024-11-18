Require Import Nat Arith.

Inductive Nat : Type := succ : Nat -> Nat |  zero : Nat.

Inductive Lst : Type := cons : Nat -> Lst -> Lst |  nil : Lst.

Inductive Tree : Type := node : Nat -> Tree -> Tree -> Tree |  leaf : Tree.

Inductive Pair : Type := mkpair : Nat -> Nat -> Pair
with ZLst : Type := zcons : Pair -> ZLst -> ZLst |  znil : ZLst.

Fixpoint drop (drop_arg0 : Nat) (drop_arg1 : Lst) : Lst
           := match drop_arg0, drop_arg1 with
              | x, nil => nil
              | zero, x => x
              | succ x, cons y z => drop x z
              end.


Lemma lem: forall n1 n2 l, drop (succ n1) (drop n2 l) = drop n1 (drop (succ n2) l).
intros. generalize dependent n1. generalize dependent n2. induction l.
- intros. assert (forall n x l, drop (succ n) (cons x l) = drop n l). 
  + intros. reflexivity.
  + destruct n2.
    * rewrite H. rewrite H. rewrite <- IHl. reflexivity.
    * simpl. destruct l. reflexivity. reflexivity.
- intros. assert (forall n, drop n nil = nil).
  + intros. destruct n. reflexivity. reflexivity.
  + rewrite H. rewrite H. rewrite H. reflexivity.
Qed.


Theorem theorem0 : forall (v : Nat) (w : Nat) (x : Nat) (y : Nat) (z : Lst), eq (drop (succ v) (drop w (drop x (cons y z)))) (drop v (drop w (drop x z))).
Proof.
intros. rewrite lem. rewrite lem. reflexivity.
Qed.

