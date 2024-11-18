Require Import Nat.

Inductive lst : Type :=
  | Nil : lst
  | Cons : nat -> lst -> lst.

Fixpoint len (l : lst) : nat :=
  match l with
  | Nil => 0
  | Cons x y => 1 + len y
  end.

Fixpoint append (l1 : lst) (l2 : lst) : lst :=
  match l1 with
  | Nil => l2
  | Cons x y => Cons x (append y l2)
  end.

Fixpoint rev (l : lst) : lst :=
  match l with
  | Nil => Nil
  | Cons x y => append (rev y) (Cons x Nil)
  end.

Lemma len_append : forall x y : lst, len (append x y) = len x + len y.
Proof.
  intros.
  induction x.
  - reflexivity.
  - simpl. rewrite IHx. reflexivity.
Qed.

Theorem len_rev : forall x : lst, len (rev x) = len x.
Proof.
  intros.
  induction x.
  - reflexivity.
  - simpl.
    rewrite len_append.
    rewrite IHx.
    simpl.
    rewrite <- plus_n_Sm.
    auto.
Qed.
