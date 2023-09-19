Load LFindLoad.
From lfind Require Import LFind.
From CircuitsCoqGym Require Import Adder. 
From Circuits Require Import AdderProof.

Set Printing Depth 1000.
Unset Printing Notations.
Set Printing Implicit.

Definition lfind_eval (lf10 : BV) (lf11 : bool) (l : list bool) (a : bool) :=
consbv (BV_full_adder_carry (@cons bool a l) (@nil bool) lf11) lf10.

Compute lfind_eval (@nil bool) (true) ((@cons (bool) false (@cons (bool) true (@cons (bool) false (@cons (bool) true (@nil (bool))))))) ((false)).
