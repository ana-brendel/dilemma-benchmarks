

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
Theorem eqb_elim: forall (x y: natural), Bool.Is_true (eqb x y) -> x = y.
Proof.
   induction x; induction y; simpl in *.
   intros.
   {
   apply IHx in H.
   subst.
   reflexivity.
   }
   {
   intros.
   destruct H.
   }
   { intros; destruct H. }
   {
   intros. reflexivity.
   }
Qed.
Theorem eqb_refl: forall n, eqb n n = true.
Proof.
   induction n; simpl.
   { assumption. }
   { reflexivity. }
Qed.

Theorem mem_cons: forall (x n: natural) (l: lst), mem x (Cons n l) = true -> x = n \/ mem x l = true.

Proof.
intros.
induction l.
{
   simpl in *.
   apply Bool.Is_true_eq_left in H.
   apply Bool.orb_prop_elim in H.
   destruct H.
   {
      apply eqb_elim in H.
      left. assumption.
   }
   {
      apply Bool.Is_true_eq_true in H.
      right. assumption.
   }
}
{
   left.
   simpl in H.
   apply Bool.Is_true_eq_left in H.
   apply Bool.orb_prop_elim in H.
   destruct H.
   {
      apply eqb_elim in H.
      assumption.
   }
   {
      destruct H.
   }
}
Qed.

Theorem mem_insort: forall (x n: natural) (l: lst), mem x (insort n l) = true -> x = n \/ mem x l = true.
Proof.
   intros.
   induction l.
   {
   simpl in H.
   destruct (less n n0).
   {
      apply mem_cons in H.
      assumption.
   }
   {
      apply mem_cons in H.
      destruct H.
      {
         right.
         simpl.
         subst.
         rewrite eqb_refl. simpl. reflexivity.
      }
      {
         apply IHl in H.
         destruct H.
         { left. assumption. }
         {
         right. simpl. rewrite H. apply Bool.orb_true_r.
         }
      }
   }
   }
   {
   simpl in H.
   apply Bool.Is_true_eq_left in H.
   apply Bool.orb_prop_elim in H.
   destruct H.
   {
      left. apply eqb_elim. assumption.
   }
   {
      destruct H.
   }
   }
Qed.

Theorem theorem0 : forall (x : natural) (y : lst), eq (mem x (sort y)) true -> eq (mem x y) true.
Proof.
   intros.
   induction y.
   {
   simpl in *.
   apply mem_insort in H.
   destruct H.
   {
      subst. rewrite eqb_refl. simpl. reflexivity.
   }
   {
      apply IHy in H.
      rewrite H.
      apply Bool.orb_true_r.
   }
   }
   simpl in H.
   inversion H.
Qed.

