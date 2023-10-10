Load LFindLoad.
From lfind Require Import LFind.
Unset Printing Notations.
Set Printing Implicit.

Inductive lst : Type :=
  | Nil : lst
  | Cons : nat -> lst -> lst.

Fixpoint lfappend (l1 : lst) (l2 : lst) : lst :=
  match l1 with
  | Nil => l2
  | Cons x y => Cons x (lfappend y l2)
  end.

Fixpoint rev2 (l : lst) (a : lst) : lst :=
  match l with
  | Nil => a
  | Cons x t => rev2 t (Cons x a)
  end.

Lemma rev2_lfappend_aux : forall x a b : lst,
  lfappend (rev2 x Nil) (lfappend a b) = lfappend (rev2 x a) b.
Proof.
  intro x.
  induction x.
  - reflexivity.
  - intros. simpl.
    rewrite <- (IHx (Cons n a)).
    rewrite <- IHx.
    reflexivity.
Qed.

Lemma lfappend_single : forall (n : nat) (a : lst),
  lfappend (Cons n Nil) a = Cons n a.
Proof.
  reflexivity.
Qed.

Theorem rev2_lfappend : forall x a : lst, rev2 x a = lfappend (rev2 x Nil) a.
Proof.
  intro x.
  induction x.
  - reflexivity.
  - intros. simpl.
    rewrite IHx.
    rewrite <- lfappend_single.
    lfind_debug.
  Admitted.

    (* rewrite rev2_lfappend_aux.
    reflexivity.
Qed. *)
