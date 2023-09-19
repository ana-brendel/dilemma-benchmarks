Load LFindLoad.
From lfind Require Import LFind.
From CircuitsCoqGym Require Import Adder.
From Circuits Require Import AdderProof.

Set Printing Depth 1000.
Unset Printing Notations.
Set Printing Implicit.

Definition lfind_eval (lf13 : BV) (lf9 : bool) (l : list bool) (lf6 : BV) (lf14 : bool) (a : bool) :=
BV_to_nat
  (appbv (consbv (half_adder_sum a lf14) lf6)
     (consbv (BV_full_adder_carry l (@nil bool) lf9) lf13)).

Compute lfind_eval (@nil bool) (false) ((@cons (bool) false (@cons (bool) false (@cons (bool) false (@cons (bool) true (@nil (bool))))))) (@cons bool false (@cons bool false (@cons bool false (@cons bool true (@nil bool))))) (true) ((false)).
