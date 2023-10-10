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

Fixpoint rev (l : lst) : lst :=
  match l with
  | Nil => Nil
  | Cons x y => lfappend (rev y) (Cons x Nil)
  end.

Lemma append_nil : forall x : lst, lfappend x Nil = x.
Proof.
  intros.
  induction x.
  - reflexivity.
  - simpl. rewrite IHx. reflexivity.
Qed.

Lemma append_assoc : forall x y z : lst,
  lfappend x (lfappend y z) = lfappend (lfappend x y) z.
Proof.
  intros.
  induction x.
  - reflexivity.
  - simpl. rewrite IHx. reflexivity.
Qed.

Lemma rev_append: forall x y : lst, rev (lfappend x y) = lfappend (rev y) (rev x).
Proof.
  intros.
  induction x.
  - simpl. rewrite append_nil. reflexivity.
  - simpl. rewrite IHx. rewrite append_assoc. reflexivity.
Qed.

Theorem double_rev : forall x : lst, rev (rev x) = x.
Proof.
  intros.
  induction x.
  - reflexivity.
  - simpl. 
  lfind_debug.
  Admitted.

  (* rewrite rev_append. rewrite IHx. reflexivity.
Qed. *)
