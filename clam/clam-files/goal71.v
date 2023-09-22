

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
Fixpoint eqb (n m: natural) : bool :=
match n, m with
   | Zero, Zero => true
   | Zero, Succ _ => false
   | Succ _, Zero => false
   | Succ n', Succ m' => eqb n' m'
end.
Fixpoint count (count_arg0 : natural) (count_arg1 : lst) : natural
           := match count_arg0, count_arg1 with
              | x, Nil => Zero
              | x, Cons y z => if eqb x y then Succ (count x z) else count x z
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

Lemma Nat_beq_eq : forall (x y : natural), eqb x y = true -> x = y.
Proof.
   intros.
   generalize dependent y.
   induction x.
   - intros. destruct y.
   + simpl in H. apply IHx in H. rewrite H. reflexivity.
   + discriminate.
   
   - intros. destruct y.

   + discriminate.
   + reflexivity.
   
Qed.           

Theorem theorem0 : forall (x : natural) (y : natural) (z : lst), not (eq x y) -> eq (count x (insort y z)) (count x z).
Proof.
   intros.
  induction z.  
  - simpl. destruct (eqb x n) eqn:?.
    + destruct (less y n) eqn:?.
      * simpl. destruct (eqb x y) eqn:?.
        -- 
         apply Nat_beq_eq in Heqb1. contradiction.
        -- rewrite Heqb. reflexivity.
      * simpl. rewrite Heqb. rewrite IHz. reflexivity.
    + destruct (less y n) eqn:?.
      * simpl. destruct (eqb x y) eqn:?.
        -- apply Nat_beq_eq in Heqb1. contradiction.
        -- rewrite Heqb. reflexivity.
      * simpl. rewrite Heqb. assumption.
   - simpl. destruct (eqb x y) eqn:?.
   + apply Nat_beq_eq in Heqb. contradiction.
      + reflexivity.
Qed.

