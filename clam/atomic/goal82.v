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

Lemma append_nil : forall (x : Lst), append x nil = x.
Proof.
  intros.
  induction x.
  - reflexivity.
  - simpl. rewrite IHx. reflexivity.
Qed.

Lemma append_assoc : forall (x y z : Lst), append (append x y) z = append x (append y z).
Proof.
  intros.
  induction x.
  - reflexivity.
  - simpl. rewrite IHx. reflexivity.
Qed.

Lemma rev_append : forall (x y : Lst), rev (append x y) = append (rev y) (rev x).
Proof.
  intros.
  induction x.
  - simpl. rewrite append_nil. reflexivity.
  - simpl. rewrite IHx. rewrite append_assoc. reflexivity.
Qed.

Lemma rev_rev : forall (x : Lst), rev (rev x) = x.
Proof.
  intros.
  induction x.
  - reflexivity.
  - simpl. rewrite rev_append. simpl. rewrite IHx. reflexivity.
Qed.

Lemma qreva_rev : forall (x y : Lst), qreva x y = append (rev x) y.
Proof.
  induction x.
  - reflexivity.
  - intros. simpl. rewrite IHx. rewrite append_assoc. simpl. reflexivity.
Qed.

Theorem theorem0 : forall (x : Lst) (y : Lst), eq (qreva (qreva x (rev y)) nil) (append y x).
Proof.
  induction x.
  - intros. simpl. rewrite qreva_rev. rewrite rev_rev. reflexivity.
  - intros. simpl. rewrite (eq_refl : cons n (rev y) = append (rev (cons n nil)) (rev y)). rewrite <- rev_append. rewrite IHx. rewrite append_assoc. simpl. reflexivity.
Qed.

