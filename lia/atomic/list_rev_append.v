Inductive lst : Type :=
  | Nil : lst
  | Cons : nat -> lst -> lst.

Fixpoint app (l : lst) (m : lst) : lst :=
match l with
  | Nil => m
  | Cons a l1 => Cons a (app l1 m)
end.

Fixpoint rev (l : lst) : lst :=
  match l with
  | Nil => Nil
  | Cons a l1 => app (rev l1) (Cons a Nil)
  end. 

Lemma app_nil : forall x : lst, app x Nil = x.
Proof.
  intros.
  induction x.
  - reflexivity.
  - simpl. rewrite IHx. reflexivity.
Qed.

Lemma app_assoc : forall x y z : lst, app x (app y z) = app (app x y) z.
Proof.
  intros.
  induction x.
  - reflexivity.
  - simpl. rewrite IHx. reflexivity.
Qed.

Theorem rev_append: forall x y : lst,
  (eq (rev (app x y)) (app (rev y) (rev x))).
Proof.
  intros.
  induction x.
  - simpl. rewrite app_nil. reflexivity.
  - simpl. rewrite IHx. rewrite app_assoc. reflexivity.
Qed.
