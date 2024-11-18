Require Import Nat Arith.

Inductive Nat : Type := succ : Nat -> Nat |  zero : Nat.

Inductive Lst : Type := nil : Lst | cons : Nat -> Lst -> Lst.

Inductive Tree : Type := node : Nat -> Tree -> Tree -> Tree |  leaf : Tree.

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

Lemma append_assoc : forall (x y z : Lst), append (append x y) z = append x (append y z).
Proof.
  intros.
  induction x.
  - reflexivity.
  - simpl. rewrite IHx. reflexivity.
Qed.

Lemma append_nil : forall (x : Lst), append x nil = x.
Proof.
  intros.
  induction x.
  - reflexivity.
  - simpl. rewrite IHx. reflexivity.
Qed.

Lemma qreva_nil : forall (x y : Lst), qreva x y = append (qreva x nil) y.
Proof.
  intro.
  induction x.
  - reflexivity.
  - intros. simpl. rewrite IHx. rewrite (IHx (cons n nil)). rewrite append_assoc. reflexivity.
Qed.

Lemma qreva_append : forall (x y : Lst), qreva (append x y) nil = append (qreva y nil) (qreva x nil).
Proof.
  intros.
  induction x.
  - simpl. rewrite append_nil. reflexivity.
  - simpl. rewrite qreva_nil. rewrite IHx. rewrite append_assoc. rewrite (qreva_nil x (cons n nil)). reflexivity.
Qed.

Theorem qreva_qreva : forall (x : Lst), eq (qreva (qreva x nil) nil) x.
Proof.
  intros.
  induction x.
  - reflexivity.
  - simpl. rewrite (qreva_nil x). rewrite qreva_append. rewrite IHx. simpl. reflexivity.
Qed.
