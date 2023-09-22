Require Import Arith.

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
Fixpoint mem (mem_arg0 : natural) (mem_arg1 : lst) : bool
           := match mem_arg0, mem_arg1 with
              | x, Nil => false
              | x, Cons y z => orb (eqb x y) (mem x z)
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
(* Requires No helper lemma, the apply is in the hypothesis *)
Theorem theorem0 : forall (x : natural) (y : natural) (z : lst), not (eq x y) -> eq (mem x (insort y z)) true -> eq (mem x z) true.
Proof.
   intros.
   induction z.
   - simpl in H0. simpl. destruct (less y n) eqn:?.
   + simpl in H0. apply Bool.orb_true_iff in H0. destruct H0.
   * apply Nat_beq_eq in H0. contradiction.
   * assumption.
 + simpl in H0. apply Bool.orb_true_iff in H0. destruct H0.
   * rewrite H0. reflexivity.
   * apply IHz in H0. rewrite H0. apply Bool.orb_true_r.
   - simpl in H0. rewrite Bool.orb_false_r in H0. apply Nat_beq_eq in H0. contradiction.
Qed.

