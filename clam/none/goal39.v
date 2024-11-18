Require Import Nat Arith.

Inductive Nat : Type := zero : Nat | succ : Nat -> Nat.

Inductive Lst : Type := nil : Lst | cons : Nat -> Lst -> Lst.

Inductive Tree : Type := node : Nat -> Tree -> Tree -> Tree |  leaf : Tree.

Inductive Pair : Type := mkpair : Nat -> Nat -> Pair
with ZLst : Type := zcons : Pair -> ZLst -> ZLst |  znil : ZLst.

Fixpoint drop (drop_arg0 : Nat) (drop_arg1 : Lst) : Lst
           := match drop_arg0, drop_arg1 with
              | x, nil => nil
              | zero, x => x
              | succ x, cons y z => drop x z
              end.

Fixpoint mem (mem_arg0 : Nat) (mem_arg1 : Lst) : Prop
:= match mem_arg0, mem_arg1 with
    | x, nil => False
    | x, cons y z => x = y \/ mem x z
    end.

Theorem theorem0 : forall (x : Nat) (y : Nat) (z : Lst), mem x (drop y z) -> mem x z.
Proof.
  intros.
  generalize dependent y.
  induction z.
  - intros. destruct y.
    + contradiction.
    + contradiction.
  - intros. destruct y.
    + assumption.
    + simpl in H. apply IHz in H. simpl. auto.
Qed.
