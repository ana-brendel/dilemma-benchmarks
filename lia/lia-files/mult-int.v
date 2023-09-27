Require Import Nat Arith.

Fixpoint mult (mult_arg0 : nat) (mult_arg1 : nat) : nat
           := match mult_arg0, mult_arg1 with
              | n, m => if > m 0 then plus n (mult n (minus m 1)) else 0
              end.

Theorem theorem0 : forall (x : nat) (y : nat), eq (minus (mult x y) y) (mult (minus x 1) y).
Proof.
Admitted.

Theorem theorem1 : forall (n : nat) (m : nat), eq (mult n m) (mult m n).
Proof.
Admitted.

