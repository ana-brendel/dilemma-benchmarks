
Require Import Nat.

Inductive lst : Type :=  Nil : lst | Cons : nat -> lst -> lst .

Inductive tree : Type := Node : nat -> tree -> tree -> tree |  Leaf : tree.

Inductive Pair : Type := mkpair : nat -> nat -> Pair
with Zlst : Type := zcons : Pair -> Zlst -> Zlst |  znil : Zlst.

Fixpoint append (append_arg0 : lst) (append_arg1 : lst) : lst
           := match append_arg0, append_arg1 with
              | Nil, x => x
              | Cons x y, z => Cons x (append y z)
              end.

Fixpoint mem (mem_arg0 : nat) (mem_arg1 : lst) : Prop
           := match mem_arg0, mem_arg1 with
              | x, Nil => False
              | x, Cons y z => or (eq x y) (mem x z)
              end.

Theorem mem_append : forall (x : nat) (y : lst) (z : lst), mem x y -> mem x (append y z).
Proof.
   intros.
   induction y.
   - contradiction.
   - simpl. destruct H.
   + auto.
   + apply IHy in H. auto.
Qed.

