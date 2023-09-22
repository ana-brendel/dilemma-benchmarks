

Inductive natural : Type := Succ : natural -> natural |  Zero : natural.

Inductive lst : Type := Cons : natural -> lst -> lst |  Nil : lst.

Inductive tree : Type := Node : natural -> tree -> tree -> tree |  Leaf : tree.

Inductive Pair : Type := mkpair : natural -> natural -> Pair
with Zlst : Type := zcons : Pair -> Zlst -> Zlst |  znil : Zlst.

Fixpoint append (append_arg0 : lst) (append_arg1 : lst) : lst
           := match append_arg0, append_arg1 with
              | Nil, x => x
              | Cons x y, z => Cons x (append y z)
              end.
(* Requires No helper lemma *)
Theorem theorem0 : forall (x : lst) (y : lst) (z : natural), eq (append (append x y) (Cons z Nil)) (append x (append y (Cons z Nil))).
Proof.
   intros.
  induction x.
  - simpl. rewrite IHx. reflexivity.
  - reflexivity.
Qed.

