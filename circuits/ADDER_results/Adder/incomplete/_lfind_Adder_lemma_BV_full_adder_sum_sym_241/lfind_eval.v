Load LFindLoad.
From lfind Require Import LFind.
From CircuitsCoqGym Require Import BV.
From CircuitsCoqGym Require Import FullAdder.
From Circuits Require Import Adder.

Set Printing Depth 1000.
Unset Printing Notations.
Set Printing Implicit.

Definition lfind_eval (cin : bool) (v : BV) (w : BV) :=
consbv (BV_full_adder_carry w v cin) nilbv.

Compute lfind_eval ((true)) (([false; true; false; false; true; true])) (([false; true; false; true; true; false])).
