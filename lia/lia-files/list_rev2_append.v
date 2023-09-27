Inductive lst : Type :=
  | Nil : lst
  | Cons : nat -> lst -> lst.

Fixpoint append (l1 : lst) (l2 : lst) : lst :=
  match l1 with
  | Nil => l2
  | Cons x y => Cons x (append y l2)
  end.

Fixpoint rev2 (l : lst) (a : lst) : lst :=
  match l with
  | Nil => a
  | Cons x t => rev2 t (Cons x a)
  end.

Lemma rev2_append_aux : forall x a b : lst,
  append (rev2 x Nil) (append a b) = append (rev2 x a) b.
Proof.
  intro x.
  induction x.
  - reflexivity.
  - intros. simpl.
    rewrite <- (IHx (Cons n a)).
    rewrite <- IHx.
    reflexivity.
Qed.

Lemma append_single : forall (n : nat) (a : lst),
  append (Cons n Nil) a = Cons n a.
Proof.
  reflexivity.
Qed.

Theorem rev2_append : forall x a : lst, rev2 x a = append (rev2 x Nil) a.
Proof.
  intro x.
  induction x.
  - reflexivity.
  - intros. simpl.
    rewrite IHx.
    rewrite <- append_single.
    rewrite rev2_append_aux.
    reflexivity.
Qed.
