

Require Import Nat.

Inductive lst : Type :=  Nil : lst | Cons : nat -> lst -> lst .

Inductive tree : Type := Node : nat -> tree -> tree -> tree |  Leaf : tree.

Inductive Pair : Type := mkpair : nat -> nat -> Pair
with Zlst : Type := zcons : Pair -> Zlst -> Zlst |  znil : Zlst.

Fixpoint drop (drop_arg0 : nat) (drop_arg1 : lst) : lst
           := match drop_arg0, drop_arg1 with
              | x, Nil => Nil
              | O, x => x
              | S x, Cons y z => drop x z
              end.

Fixpoint mem (mem_arg0 : nat) (mem_arg1 : lst) : Prop
           := match mem_arg0, mem_arg1 with
              | x, Nil => False
              | x, Cons y z => or (eq x y) (mem x z)
              end.

(* (No helper required) *)
Theorem theorem0 : forall (x : nat) (y : nat) (z : lst), mem x (drop y z) -> mem x z.
Proof.
   intros.
   generalize dependent y.
   induction z.
   - intros. destruct y.
   + contradiction.
   + contradiction.
   - intros. destruct y.
   + assumption.
   + simpl in H. apply IHz in H. simpl. auto.
Qed.

