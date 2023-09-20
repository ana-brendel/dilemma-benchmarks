Load LFindLoad.
From lfind Require Import LFind.
From CircuitsCoqGym Require Import Adder.
From Circuits Require Import AdderProof.

Set Printing Depth 1000.
Unset Printing Notations.
Set Printing Implicit.

Definition lfind_eval (cin : bool) (a : bool) (lf9 : nat) :=
Nat.add lf9
  (Nat.add (bool_to_nat (half_adder_carry a cin))
     (bool_to_nat (half_adder_carry a cin))).

Compute lfind_eval ((true)) ((false)) (S O).
