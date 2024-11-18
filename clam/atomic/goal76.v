Require Import Nat Arith.

Inductive Nat : Type := succ : Nat -> Nat |  zero : Nat.

Inductive Lst : Type := nil : Lst | cons : Nat -> Lst -> Lst.

Inductive Tree : Type := leaf : Tree | node : Nat -> Tree -> Tree -> Tree.

Inductive Pair : Type := mkpair : Nat -> Nat -> Pair
with ZLst : Type := zcons : Pair -> ZLst -> ZLst |  znil : ZLst.

Fixpoint append (append_arg0 : Lst) (append_arg1 : Lst) : Lst
           := match append_arg0, append_arg1 with
              | nil, x => x
              | cons x y, z => cons x (append y z)
              end.

Fixpoint rev (rev_arg0 : Lst) : Lst
           := match rev_arg0 with
              | nil => nil
              | cons x y => append (rev y) (cons x nil)
              end.

Fixpoint qreva (qreva_arg0 : Lst) (qreva_arg1 : Lst) : Lst
           := match qreva_arg0, qreva_arg1 with
              | nil, x => x
              | cons z x, y => qreva x (cons z y)
              end.

Fixpoint revflat (revflat_arg0 : Tree) : Lst
           := match revflat_arg0 with
              | leaf => nil
              | node d l r => append (revflat l) (cons d (revflat r))
              end.

Fixpoint qrevaflat (qrevaflat_arg0 : Tree) (qrevaflat_arg1 : Lst) : Lst
           := match qrevaflat_arg0, qrevaflat_arg1 with
              | leaf, x => x
              | node d l r, x => qrevaflat l (cons d (qrevaflat r x))
              end.

Lemma append_assoc : forall (x y z : Lst), append (append x y) z = append x (append y z).
Proof.
  intros.
  induction x.
  - reflexivity.
  - simpl. rewrite IHx. reflexivity.
Qed.

Theorem theorem0 : forall (x : Tree) (y : Lst), eq (append (revflat x) y) (qrevaflat x y).
Proof.
  induction x.
  - reflexivity.
  - intros. simpl. rewrite append_assoc. simpl. rewrite IHx2. rewrite IHx1. reflexivity.
Qed.

