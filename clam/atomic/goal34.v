Require Import Nat Arith.

Inductive Nat : Type := zero : Nat | succ : Nat -> Nat.

Inductive Lst : Type := cons : Nat -> Lst -> Lst |  nil : Lst.

Inductive Tree : Type := node : Nat -> Tree -> Tree -> Tree |  leaf : Tree.

Inductive Pair : Type := mkpair : Nat -> Nat -> Pair
with ZLst : Type := zcons : Pair -> ZLst -> ZLst |  znil : ZLst.

Fixpoint plus (plus_arg0 : Nat) (plus_arg1 : Nat) : Nat
           := match plus_arg0, plus_arg1 with
              | zero, n => n
              | succ n, m => succ (plus n m)
              end.

Fixpoint mult (mult_arg0 : Nat) (mult_arg1 : Nat) : Nat
           := match mult_arg0, mult_arg1 with
              | zero, n => zero
              | succ n, m => plus (mult n m) m
              end.

Fixpoint qmult (qmult_arg0 : Nat) (qmult_arg1 : Nat) (qmult_arg2 : Nat) : Nat
           := match qmult_arg0, qmult_arg1, qmult_arg2 with
              | zero, n, m => m
              | succ n, m, p => qmult n m (plus p m)
              end.

Lemma plus_succ : forall (x y : Nat), plus x (succ y) = succ (plus x y).
Proof.
  intros.
  induction x.
  - reflexivity.
  - simpl. rewrite IHx. reflexivity.
Qed.

Lemma plus_assoc : forall (x y z : Nat), plus (plus x y) z = plus x (plus y z).
Proof.
  intros.
  induction x.
  - reflexivity.
  - simpl. rewrite IHx. reflexivity.
Qed.

Lemma plus_zero : forall (x : Nat), plus x zero = x.
Proof.
  intros.
  induction x.
  - reflexivity.
  - simpl. rewrite IHx. reflexivity.
Qed.

Lemma plus_commut : forall (x y : Nat), plus x y = plus y x.
Proof.
  intros.
  induction x.
  - rewrite plus_zero. reflexivity.
  - simpl. rewrite plus_succ. rewrite IHx. reflexivity.
Qed.

Lemma plus_qmult : forall (x y z a : Nat), plus (qmult x y z) a = qmult x y (plus z a).
Proof.
  intro.
  induction x.
  - reflexivity.
  - intros. simpl. rewrite IHx. rewrite plus_assoc. rewrite (plus_commut y a). rewrite <- plus_assoc. reflexivity.
Qed.

Theorem mult_eq_qmult : forall (x : Nat) (y : Nat), eq (mult x y) (qmult x y zero).
Proof.
  intros.
  induction x.
  - reflexivity.
  - simpl. rewrite IHx. rewrite plus_qmult. reflexivity.
Qed.
