Load LFindLoad.
From lfind Require Import LFind.
From CircuitsCoqGym Require Import Adder. 
From Circuits Require Import AdderProof.

Set Printing Depth 1000.
Unset Printing Notations.
Set Printing Implicit.

Definition lfind_eval (lf15 : bool) (lf14 : bool) :=
bool_to_nat (half_adder_sum lf14 lf15).

Compute lfind_eval (true) (false).
