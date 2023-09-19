Load LFindLoad.
From lfind Require Import LFind.
From CircuitsCoqGym Require Import Adder. 
From Circuits Require Import AdderProof.

Set Printing Depth 1000.
Unset Printing Notations.
Set Printing Implicit.

Definition lfind_eval (lf14 : bool) (a : bool) :=
half_adder_sum a lf14.

Compute lfind_eval (true) ((true)).
