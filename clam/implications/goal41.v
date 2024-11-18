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

Fixpoint lst_intersection (lst_intersection_arg0 : Lst) (lst_intersection_arg1 : Lst) : Lst
           := match lst_intersection_arg0, lst_intersection_arg1 with
              | nil, x => nil
              | cons n x, y => if lst_mem n y then cons n (lst_intersection x y) else lst_intersection x y
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

Lemma mem_append : forall (n : Nat) (x y : Lst), lst_mem n x = true -> lst_mem n (append y x) = true.
Proof.
  intros.
  induction y.
  - simpl. assumption.
  - simpl. rewrite IHy. apply orb_true_r.
Qed.

Lemma subset_append_general : forall (x y z : Lst), lst_subset x y -> lst_subset x (append z y).
Proof.
  intros.
  induction x.
  - reflexivity.
  - simpl. simpl in H. destruct H. apply IHx in H. split.
    + assumption.
    + rewrite mem_append. split.
      * assumption.
Qed.

Theorem theorem0 : forall (x : Lst) (y : Lst), lst_subset x y -> lst_eq (lst_intersection x y) x.
Proof.
  intros.
  induction x.
  - simpl. unfold lst_eq. tauto.
  - simpl. simpl in H. destruct H. rewrite H0. apply IHx in H. unfold lst_eq in H. destruct H. unfold lst_eq. split.
    + simpl. split.
      * rewrite append_single. apply subset_append_general. assumption.
      * rewrite Nat_beq_refl. reflexivity.
    + simpl. split.
      * rewrite append_single. apply subset_append_general. assumption.
      * rewrite Nat_beq_refl. reflexivity.
Qed.
