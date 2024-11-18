Require Import Nat Arith.

Inductive INT : Type := succ : INT -> INT |  zero : INT.

Fixpoint add (add_arg0 : INT) (add_arg1 : INT) : INT
           := match add_arg0, add_arg1 with
              | n, zero => n
              | n, succ m => succ (add n m)
              | add x y, z => add x (add y z)
              | x, y => add y x
              end.

Fixpoint mult (mult_arg0 : INT) (mult_arg1 : INT) : INT
           := match mult_arg0, mult_arg1 with
              | n, zero => zero
              | n, succ m => add n (mult n m)
              | zero, n => mult n zero
              end.

Theorem theorem0 : forall (n : INT) (m : INT), eq (mult n m) (mult m n).
Proof.
Admitted.

