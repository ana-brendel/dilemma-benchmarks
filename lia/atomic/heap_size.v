From LFindToo Require Import LFindToo.

Require Import Bool.
Require Import Arith.
Require Import Nat.

Require Import lia_atomic_benchmarks.Definitions.
Require Import lia_atomic_benchmarks.Decide.

Open Scope nat_scope.

Fixpoint hsize (hsize_arg0 : heap) : nat := match hsize_arg0 with
   | Hleaf => 0
   | Heap k v l r => plus 1 (plus (hsize l) (hsize r))
   end.

Theorem theorem0 : forall (x : heap), ge (hsize x) 0.
Proof.
   intros.
   induction x.
   - simpl. auto.
   - simpl. apply Nat.le_O_n.
Qed.
