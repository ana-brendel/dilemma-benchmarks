Require Import Nat Arith.

Inductive Heap : Type := hleaf : Heap |  heap : nat -> nat -> Heap -> Heap -> Heap.

Fixpoint hsize (hsize_arg0 : Heap) : nat
           := match hsize_arg0 with
              | hleaf => 0
              | heap k v l r => plus 1 (plus (hsize l) (hsize r))
              end.

Theorem theorem0 : forall (x : Heap), ge (hsize x) 0.
Proof.
   intros.
   induction x.
   - simpl. auto.
   - simpl. apply le_O_n.
Qed.
