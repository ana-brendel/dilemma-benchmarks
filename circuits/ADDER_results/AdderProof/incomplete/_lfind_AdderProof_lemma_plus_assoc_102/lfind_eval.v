Load LFindLoad.
From lfind Require Import LFind.
From CircuitsCoqGym Require Import Adder.
From Circuits Require Import AdderProof.

Set Printing Depth 1000.
Unset Printing Notations.
Set Printing Implicit.

Definition lfind_eval (lf13 : nat) (lf6 : nat) (lf10 : bool) :=
Nat.add (bool_to_nat lf10) (Nat.add (Nat.add lf6 lf6) (Nat.add lf13 lf13)).

Compute lfind_eval (S (S (S (S (S (S (S (S (S (S (S (S (S (S (S O))))))))))))))) (O) (true).
