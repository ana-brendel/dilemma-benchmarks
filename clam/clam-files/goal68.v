

Inductive natural : Type := Succ : natural -> natural |  Zero : natural.

Inductive lst : Type := Cons : natural -> lst -> lst |  Nil : lst.

Inductive tree : Type := Node : natural -> tree -> tree -> tree |  Leaf : tree.

Inductive Pair : Type := mkpair : natural -> natural -> Pair
with Zlst : Type := zcons : Pair -> Zlst -> Zlst |  znil : Zlst.

Fixpoint less (less_arg0 : natural) (less_arg1 : natural) : bool
           := match less_arg0, less_arg1 with
              | x, Zero => false
              | Zero, Succ x => true
              | Succ x, Succ y => less x y
              end.

Fixpoint len (len_arg0 : lst) : natural
           := match len_arg0 with
              | Nil => Zero
              | Cons x y => Succ (len y)
              end.

Fixpoint insort (insort_arg0 : natural) (insort_arg1 : lst) : lst
           := match insort_arg0, insort_arg1 with
              | i, Nil => Cons i Nil
              | i, Cons x y => if less i x then Cons i (Cons x y) else Cons x (insort i y)
              end.

Fixpoint sort (sort_arg0 : lst) : lst
           := match sort_arg0 with
              | Nil => Nil
              | Cons x y => insort x (sort y)
              end.
(* Requires No helper lemma *)
Theorem theorem0 : forall (x : natural) (y : lst), eq (len (insort x y)) (Succ (len y)).
Proof.
   intros.
  induction y.
  - simpl. destruct (less x n) eqn:?.
    + reflexivity.
    + simpl. rewrite IHy. reflexivity.
    - reflexivity.
Qed.

