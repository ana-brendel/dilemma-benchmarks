Require Import Arith.

Inductive natural : Type := Succ : natural -> natural |  Zero : natural.

Inductive lst : Type := Cons : natural -> lst -> lst |  Nil : lst.

Inductive tree : Type := Node : natural -> tree -> tree -> tree |  Leaf : tree.

Inductive Pair : Type := mkpair : natural -> natural -> Pair
with Zlst : Type := zcons : Pair -> Zlst -> Zlst |  znil : Zlst.

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

Definition lst_mem := mem.

Fixpoint lst_intersection (lst_intersection_arg0 : lst) (lst_intersection_arg1 : lst) : lst
           := match lst_intersection_arg0, lst_intersection_arg1 with
              | Nil, x => Nil
              | Cons n x, y => if lst_mem n y then Cons n (lst_intersection x y) else lst_intersection x y
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


Theorem theorem0 : forall (x : natural) (y : lst) (z : lst), and (eq (lst_mem x y) true) (eq (lst_mem x z) true) -> eq (lst_mem x (lst_intersection y z)) true.
Proof.
   intros.
   destruct H.
   induction y.   
   - simpl in H. apply Bool.orb_prop in H. destruct H.
     + simpl. destruct (lst_mem n z) eqn:?.
       * simpl. rewrite H. reflexivity.
       * rewrite (Nat_beq_eq x n H) in H0. rewrite H0 in Heqb. discriminate.
     + apply IHy in H. simpl. destruct (lst_mem n z) eqn:?.
       * simpl. rewrite H. apply Bool.orb_true_r.
       * assumption.
   - discriminate.   
Qed.

