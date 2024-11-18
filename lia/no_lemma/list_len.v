Require Import Nat Arith.

Inductive Lst : Type := cons : nat -> Lst -> Lst |  nil : Lst.

Fixpoint len (len_arg0 : Lst) : nat
           := match len_arg0 with
              | nil => 0
              | cons x y => plus 1 (len y)
              end.

Theorem theorem0 : forall (x : Lst), ge (len x) 0.
Proof.
   intros.
   induction x.
   - simpl. auto.
   - simpl. auto.
Qed.

