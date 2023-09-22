

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
(* Requires No helper lemmas *)
Theorem theorem0 : forall (x : lst) (y : lst) (z : lst), eq (append (append x y) z) (append x (append y z)).
Proof.
   intros.
  induction x.
  - simpl. rewrite IHx. reflexivity.
  - reflexivity.
  
Qed.

