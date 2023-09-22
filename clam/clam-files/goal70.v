

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
Fixpoint count  (count_arg1 : lst) (count_arg0 : natural) : natural
           := match  count_arg1, count_arg0 with
              | Nil, x => Zero
              | Cons y z, x => if eqb x y then Succ (count z x) else count z x
              end.

Fixpoint insort  (insort_arg1 : lst) (insort_arg0 : natural) : lst
           := match insort_arg1, insort_arg0 with
              | Nil, i => Cons i Nil
              | Cons x y, i => if less i x then Cons i (Cons x y) else Cons x (insort y i)
              end.

Fixpoint sort (sort_arg0 : lst) : lst
           := match sort_arg0 with
              | Nil => Nil
              | Cons x y => insort (sort y) x
              end.

Lemma Nat_beq_refl : forall (n : natural), eqb n n = true.
Proof.
   intros.
   induction n.
   - assumption.
   - reflexivity.
   
Qed.

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

Lemma less_not_refl : forall (n : natural), less n n = false.
Proof.
   intros.
   induction n.
   - simpl. assumption.
   - reflexivity.
   
Qed.
              
Theorem theorem0 : forall (x : natural) (y : lst), eq (count (insort y x) x) (Succ (count y x)).
Proof.
   intros.
  induction y.
  - simpl. destruct (eqb x n) eqn:?.
    + destruct (less x n) eqn:?.
      * apply Nat_beq_eq in Heqb. rewrite Heqb in Heqb0. rewrite less_not_refl in Heqb0. discriminate.
      * simpl. rewrite Heqb. rewrite IHy. reflexivity.
    + destruct (less x n) eqn:?.
      * simpl. rewrite Nat_beq_refl. rewrite Heqb. reflexivity.
      * simpl. rewrite Heqb. assumption.
      - simpl. rewrite Nat_beq_refl. reflexivity.
Qed.

