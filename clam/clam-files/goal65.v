

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

Fixpoint len (len_arg0 : lst) : natural
           := match len_arg0 with
              | Nil => Zero
              | Cons x y => Succ (len y)
              end.
(* Requires No helper lemma *)
Theorem theorem0 : forall (w : lst) (x : natural) (y : natural) (z : lst), eq (len (append w (Cons x (Cons y z)))) (Succ (Succ (len (append w z)))).
Proof.
   intros.
  induction w.
  - simpl. rewrite IHw. reflexivity.
  - reflexivity.
Qed.

