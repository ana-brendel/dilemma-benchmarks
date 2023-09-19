Load LFindLoad.
From lfind Require Import LFind.
From CircuitsCoqGym Require Import Adder. 
From Circuits Require Import AdderProof.

Set Printing Depth 1000.
Unset Printing Notations.
Set Printing Implicit.

Definition lfind_eval (lf11 : nat) (lf13 : nat) :=
Nat.add lf13 lf11.

Compute lfind_eval (S (S (S (S (S (S (S (S (S (S (S (S O)))))))))))) (S O).
