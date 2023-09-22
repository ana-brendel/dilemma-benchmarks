
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
Definition leq (x : natural) (y : natural) : bool :=
eqb x y || less x y.
(* 
Fixpoint leq (n m : natural) : bool :=
match n, m with
| Zero  , x   => true
| x , Zero   => false
| Succ x, Succ y => leq x y
end. *)

Fixpoint insort (insort_arg0 : natural) (insort_arg1 : lst) : lst
           := match insort_arg0, insort_arg1 with
              | i, Nil => Cons i Nil
              | i, Cons x y => if less i x then Cons i (Cons x y) else Cons x (insort i y)
              end.

Fixpoint sorted (sorted_arg0 : lst) : bool
:= match sorted_arg0 with
   | Nil => true
   | Cons x l => match l with
      | Nil => true
      | Cons z y => andb (sorted l) (leq x z)
      end
   end.

Fixpoint sort (sort_arg0 : lst) : lst
           := match sort_arg0 with
              | Nil => Nil
              | Cons x y => insort x (sort y)
              end.
Lemma not_less : forall (x y : natural), less x y = false -> leq y x = true.
Proof.
   intros.
   generalize dependent y.
   induction x.
   - intros. unfold leq. destruct y.
   + simpl in H. apply IHx in H. unfold leq in H. simpl. assumption.
   + reflexivity.
   - intros. unfold leq. destruct y.
   + discriminate.
   + reflexivity.
Qed.
              
Theorem theorem0 : forall (x : lst) (y : natural), eq (sorted x) true -> eq (sorted (insort y x)) true.
Proof.
   (* intros.
  induction x.
  - destruct x.
    + simpl. destruct (less y n) eqn:?.
      * simpl. unfold leq. rewrite Heqb. admit.
      * simpl. apply not_less. assumption.
    + simpl in H. apply andb_true_iff in H. destruct H. simpl in IHx. simpl. destruct (less y n) eqn:?.
      * simpl. rewrite H. rewrite H0. unfold leq. rewrite Heqb. apply orb_true_r.
      * destruct (less y n0) eqn:?.
        -- simpl. rewrite H. apply not_less in Heqb. rewrite Heqb. unfold leq. rewrite Heqb0. rewrite orb_true_r. reflexivity.
        -- simpl. apply IHx in H. simpl in H. rewrite H. rewrite H0. reflexivity.
     - reflexivity. *)
Admitted.


