Require Import Nat Arith.

Inductive Tree : Type := node : nat -> Tree -> Tree -> Tree |  leaf : Tree.

Fixpoint tsize (tsize_arg0 : Tree) : nat
           := match tsize_arg0 with
              | leaf => 0
              | node x l r => plus 1 (plus (tsize l) (tsize r))
              end.

Theorem theorem0 : forall (x : Tree), ge (tsize x) 0.
Proof.
   intros.
   induction x.
   - simpl. apply le_O_n.
   - simpl. auto.
Qed.

