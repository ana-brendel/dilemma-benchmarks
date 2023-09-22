

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

Lemma lem: forall n1 n2 l, drop (Succ n1) (drop n2 l) = drop n1 (drop (Succ n2) l).
Proof.
intros. generalize dependent n1. generalize dependent n2. induction l.
- intros. assert (forall n x l, drop (Succ n) (Cons x l) = drop n l). 
   + intros. reflexivity.
   + destruct n2.
   * rewrite H. rewrite H. rewrite <- IHl. reflexivity.
   * simpl. destruct l. reflexivity. reflexivity.
- intros. assert (forall n, drop n Nil = Nil).
   + intros. destruct n. reflexivity. reflexivity.
   + rewrite H. rewrite H. rewrite H. reflexivity.
Qed.


Theorem theorem0 : forall (v : natural) (w : natural) (x : natural) (y : natural) (z : lst), eq (drop (Succ v) (drop w (drop x (Cons y z)))) (drop v (drop w (drop x z))).
Proof.
intros. 
rewrite lem. 
rewrite lem. reflexivity.
Qed.

