Require Import Nat Arith.

Inductive Nat : Type := succ : Nat -> Nat |  zero : Nat.

Inductive Lst : Type :=  nil : Lst | cons : Nat -> Lst -> Lst.

Inductive Tree : Type := node : Nat -> Tree -> Tree -> Tree |  leaf : Tree.

Inductive Pair : Type := mkpair : Nat -> Nat -> Pair
with ZLst : Type := zcons : Pair -> ZLst -> ZLst |  znil : ZLst.

Fixpoint append (append_arg0 : Lst) (append_arg1 : Lst) : Lst
           := match append_arg0, append_arg1 with
              | nil, x => x
              | cons x y, z => cons x (append y z)
              end.

Fixpoint mem (mem_arg0 : Nat) (mem_arg1 : Lst) : Prop
           := match mem_arg0, mem_arg1 with
              | x, nil => False
              | x, cons y z => x = y \/ mem x z
              end.

Theorem mem_append : forall (x : Nat) (y : Lst) (z : Lst), mem x y -> mem x (append y z).
Proof.
  intros.
  induction y.
  - contradiction.
  - simpl. destruct H.
    + auto.
    + apply IHy in H. auto.
Qed.
