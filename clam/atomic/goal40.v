Require Import Nat Arith Bool.

Inductive Nat : Type := zero : Nat | succ : Nat -> Nat.

Scheme Equality for Nat.

Inductive Lst : Type := nil : Lst | cons : Nat -> Lst -> Lst.

Inductive Tree : Type := node : Nat -> Tree -> Tree -> Tree |  leaf : Tree.

Inductive Pair : Type := mkpair : Nat -> Nat -> Pair
with ZLst : Type := zcons : Pair -> ZLst -> ZLst |  znil : ZLst.

Fixpoint append (append_arg0 : Lst) (append_arg1 : Lst) : Lst
           := match append_arg0, append_arg1 with
              | nil, x => x
              | cons x y, z => cons x (append y z)
              end.

Fixpoint mem (mem_arg0 : Nat) (mem_arg1 : Lst) : bool
:= match mem_arg0, mem_arg1 with
    | x, nil => false
    | x, cons y z => orb (Nat_beq x y) (mem x z)
    end.

Definition lst_mem (lst_mem_arg0 : Nat) (lst_mem_arg1 : Lst) : bool
           := match lst_mem_arg0, lst_mem_arg1 with
              | n, x => mem n x
              end.

Fixpoint lst_subset (lst_subset_arg0 : Lst) (lst_subset_arg1 : Lst) : Prop
           := match lst_subset_arg0, lst_subset_arg1 with
              | nil, x => True
              | cons n x, y => and (lst_subset x y) (lst_mem n y = true)
              end.

Definition lst_eq (lst_eq_arg0 : Lst) (lst_eq_arg1 : Lst) : Prop
           := match lst_eq_arg0, lst_eq_arg1 with
              | x, y => and (lst_subset x y) (lst_subset y x)
              end.

Fixpoint lst_union (lst_union_arg0 : Lst) (lst_union_arg1 : Lst) : Lst
           := match lst_union_arg0, lst_union_arg1 with
              | nil, x => x
              | cons n x, y => if lst_mem n y then lst_union x y else cons n (lst_union x y)
              end.

Lemma Nat_beq_refl : forall (n : Nat), Nat_beq n n = true.
Proof.
  intros.
  induction n.
  - reflexivity.
  - assumption.
Qed.

Lemma append_single : forall (x : Lst) (n : Nat), cons n x = append (cons n nil) x.
Proof.
  reflexivity.
Qed.

Lemma append_cons : forall (x y : Lst) (n : Nat), append x (cons n y) = append (append x (cons n nil)) y.
Proof.
  intros.
  induction x.
  - reflexivity.
  - simpl. rewrite IHx. reflexivity.
Qed.

Lemma subset_append : forall (x y : Lst), lst_subset x (append y x).
Proof.
  intro.
  induction x.
  - reflexivity.
  - intros. simpl. split.
    + rewrite append_cons. apply IHx.
    + induction y.
      * simpl. rewrite Nat_beq_refl. reflexivity.
      * simpl. rewrite IHy. apply orb_true_r.
Qed.

Lemma subset_refl : forall (x : Lst), lst_subset x x.
Proof.
  intros.
  induction x.
  - reflexivity.
  - simpl. split.
    + rewrite append_single. apply subset_append.
    + rewrite Nat_beq_refl. reflexivity.
Qed.

Theorem theorem0 : forall (x : Lst) (y : Lst), lst_subset x y -> lst_eq (lst_union x y) y.
Proof.
  intros.
  induction x.
  - simpl. unfold lst_eq. split.
    + apply subset_refl.
    + apply subset_refl.
  - simpl. simpl in H. destruct H. rewrite H0. apply IHx. assumption.
Qed.
