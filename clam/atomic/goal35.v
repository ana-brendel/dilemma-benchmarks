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

Fixpoint exp (exp_arg0 : Nat) (exp_arg1 : Nat) : Nat
           := match exp_arg0, exp_arg1 with
              | n, zero => succ zero
              | n, succ m => mult (exp n m) n
              end.

Fixpoint qexp (qexp_arg0 : Nat) (qexp_arg1 : Nat) (qexp_arg2 : Nat) : Nat
           := match qexp_arg0, qexp_arg1, qexp_arg2 with
              | n, zero, m => m
              | n, succ m, p => qexp n m (mult p n)
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

Lemma mult_zero : forall (x : Nat), mult x zero = zero.
Proof.
  intros.
  induction x.
  - reflexivity.
  - simpl. rewrite IHx. reflexivity.
Qed.

Lemma mult_succ : forall (x y : Nat), plus (mult x y) x = mult x (succ y).
Proof.
  intros.
  induction x.
  - reflexivity.
  - simpl. rewrite plus_succ. rewrite plus_assoc. rewrite (plus_commut y x). rewrite <- plus_assoc. rewrite IHx. rewrite plus_succ. reflexivity.
Qed.

Lemma mult_commut : forall (x y : Nat), mult x y = mult y x.
Proof.
  intros.
  induction x.
  - rewrite mult_zero. reflexivity.
  - simpl. rewrite IHx. rewrite mult_succ. reflexivity.
Qed.

Lemma distrib : forall (x y z : Nat), mult (plus x y) z = plus (mult x z) (mult y z).
Proof.
  intros.
  induction x.
  - reflexivity.
  - simpl. rewrite IHx. rewrite plus_assoc. rewrite (plus_commut (mult y z) z). rewrite <- plus_assoc. reflexivity.
Qed.

Lemma mult_assoc : forall (x y z : Nat), mult (mult x y) z = mult x (mult y z).
Proof.
  intros.
  induction x.
  - reflexivity.
  - simpl. rewrite distrib. rewrite IHx. reflexivity.
Qed.

Theorem mult_qexp : forall (x y z a : Nat), mult (qexp x y z) a = qexp x y (mult z a).
Proof.
  intros x y.
  induction y.
  - reflexivity.
  - intros. simpl. rewrite IHy. rewrite mult_assoc. rewrite (mult_commut x a). rewrite <- mult_assoc. reflexivity.
Qed.

Theorem exp_eq_qexp : forall (x : Nat) (y : Nat), eq (exp x y) (qexp x y (succ zero)).
Proof.
  intros.
  induction y.
  - reflexivity.
  - simpl. rewrite IHy. rewrite mult_qexp. reflexivity.
Qed.
