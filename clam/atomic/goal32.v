Require Import Nat Arith.

Inductive Nat : Type := zero : Nat | succ : Nat -> Nat.

Inductive Lst : Type :=  nil : Lst | cons : Nat -> Lst -> Lst.

Inductive Tree : Type := node : Nat -> Tree -> Tree -> Tree |  leaf : Tree.

Inductive Pair : Type := mkpair : Nat -> Nat -> Pair
with ZLst : Type := zcons : Pair -> ZLst -> ZLst |  znil : ZLst.

Fixpoint append (append_arg0 : Lst) (append_arg1 : Lst) : Lst
           := match append_arg0, append_arg1 with
              | nil, x => x
              | cons x y, z => cons x (append y z)
              end.

Fixpoint len (len_arg0 : Lst) : Nat
           := match len_arg0 with
              | nil => zero
              | cons x y => succ (len y)
              end.

Fixpoint rotate (rotate_arg0 : Nat) (rotate_arg1 : Lst) : Lst
           := match rotate_arg0, rotate_arg1 with
              | zero, x => x
              | succ n, nil => nil
              | succ n, cons y x => rotate n (append x (cons y nil))
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

Lemma rotate_len_append : forall (x y : Lst), rotate (len x) (append x y) = append y x.
Proof.
  intro.
  induction x.
  - intros. simpl. rewrite append_nil. reflexivity.
  - intros. simpl. rewrite append_assoc. rewrite IHx. rewrite append_assoc. reflexivity.
Qed.

Theorem rotate_len : forall (x : Lst), eq (rotate (len x) x) x.
Proof.
  intros.
  induction x.
  - reflexivity.
  - simpl. rewrite rotate_len_append. reflexivity.
Qed.
