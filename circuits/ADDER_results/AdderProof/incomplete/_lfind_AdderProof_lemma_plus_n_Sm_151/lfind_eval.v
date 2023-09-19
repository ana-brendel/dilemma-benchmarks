Load LFindLoad.
From lfind Require Import LFind.
From CircuitsCoqGym Require Import Adder.
From Circuits Require Import AdderProof.

Set Printing Depth 1000.
Unset Printing Notations.
Set Printing Implicit.

Definition lfind_eval (lf7 : nat) (l : list bool) :=
Nat.add (Nat.add (BV_to_nat l) (BV_to_nat l)) (S lf7).

Compute lfind_eval (O) ((@cons (bool) false (@nil (bool)))).
