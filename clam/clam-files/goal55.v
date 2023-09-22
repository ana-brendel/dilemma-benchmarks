

Inductive natural : Type := Succ : natural -> natural |  Zero : natural.

Inductive lst : Type := Cons : natural -> lst -> lst |  Nil : lst.

Inductive tree : Type := Node : natural -> tree -> tree -> tree |  Leaf : tree.

Inductive Pair : Type := mkpair : natural -> natural -> Pair
with Zlst : Type := zcons : Pair -> Zlst -> Zlst |  znil : Zlst.

Fixpoint drop (drop_arg0 : natural) (drop_arg1 : lst) : lst
           := match drop_arg0, drop_arg1 with
              | x, Nil => Nil
              | Zero, x => x
              | Succ x, Cons y z => drop x z
              end.

(* No helper lemma needed. *)
Theorem theorem0 : forall (v : natural) (w : natural) (x : natural) (y : natural) (z : lst),
  eq (drop (Succ v) (drop (Succ w) (Cons x (Cons y z)))) (drop (Succ v) (drop w (Cons x z))).
Proof.
intros. assert (forall n x l, drop (Succ n) (Cons x l) = drop n l). 
  - intros. reflexivity.
  - rewrite H. induction w.
    + rewrite H. rewrite H. reflexivity.
    + reflexivity.
Qed. 

