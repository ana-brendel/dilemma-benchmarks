Load LFindLoad.
From lfind Require Import LFind.
From CircuitsCoqGym Require Import HalfAdder. 
From Circuits Require Import FullAdder.

Set Printing Depth 1000.
Unset Printing Notations.
Set Printing Implicit.

Definition lfind_eval (a : bool) :=
half_adder_sum (half_adder_sum a _UNBOUND_REL_1) false.

Compute lfind_eval ((false)).
