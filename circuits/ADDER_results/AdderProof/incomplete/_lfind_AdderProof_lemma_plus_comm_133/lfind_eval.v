Load LFindLoad.
From lfind Require Import LFind.
From CircuitsCoqGym Require Import Adder.
From Circuits Require Import AdderProof.

Set Printing Depth 1000.
Unset Printing Notations.
Set Printing Implicit.

Definition lfind_eval (a0 : bool) :=
bool_to_nat a0.

Compute lfind_eval ((false)).
