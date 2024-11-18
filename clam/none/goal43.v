Require Import Nat Arith Bool.

Inductive Nat : Type := succ : Nat -> Nat |  zero : Nat.

Scheme Equality for Nat.

Inductive Lst : Type := nil : Lst | cons : Nat -> Lst -> Lst.

Inductive Tree : Type := node : Nat -> Tree -> Tree -> Tree |  leaf : Tree.

Inductive Pair : Type := mkpair : Nat -> Nat -> Pair
with ZLst : Type := zcons : Pair -> ZLst -> ZLst |  znil : ZLst.

Fixpoint mem (mem_arg0 : Nat) (mem_arg1 : Lst) : bool
           := match mem_arg0, mem_arg1 with
              | x, nil => false
              | x, cons y z => orb (Nat_beq x y) (mem x z)
              end.

Definition lst_mem := mem.

Fixpoint lst_union (lst_union_arg0 : Lst) (lst_union_arg1 : Lst) : Lst
           := match lst_union_arg0, lst_union_arg1 with
              | nil, x => x
              | cons n x, y => if lst_mem n y then lst_union x y else cons n (lst_union x y)
              end.

Theorem theorem0 : forall (x : Nat) (y : Lst) (z : Lst), eq (lst_mem x y) true -> eq (lst_mem x (lst_union z y)) true.
Proof.
  intros.
  induction z.
  - assumption.
  - simpl. destruct (lst_mem n y).
    + assumption.
    + simpl. rewrite IHz. apply orb_true_r.
Qed.

