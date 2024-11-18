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

Lemma distrib : forall (x y z : Nat), mult (plus x y) z = plus (mult x z) (mult y z).
Proof.
  intros.
  induction x.
  - reflexivity.
  - simpl. rewrite IHx. rewrite plus_assoc. rewrite (plus_commut (mult y z) z). rewrite <- plus_assoc. reflexivity.
Qed.

Theorem mult_assoc : forall (x : Nat) (y : Nat) (z : Nat), eq (mult (mult x y) z) (mult x (mult y z)).
Proof.
  intros.
  induction x.
  - reflexivity.
  - simpl. rewrite distrib. rewrite IHx. reflexivity.
Qed.

