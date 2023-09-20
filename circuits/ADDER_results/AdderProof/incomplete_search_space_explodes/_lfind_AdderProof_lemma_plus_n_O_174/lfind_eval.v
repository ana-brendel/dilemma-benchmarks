Load LFindLoad.
From lfind Require Import LFind.
From CircuitsCoqGym Require Import Adder. 
From Circuits Require Import AdderProof.

Set Printing Depth 1000.
Unset Printing Notations.
Set Printing Implicit.

Definition lfind_eval (l0 : list bool) (l : list bool) :=
Nat.add (BV_to_nat l) (BV_to_nat l0).

Compute lfind_eval ((@cons (bool) false (@cons (bool) false (@cons (bool) true (@cons (bool) true (@cons (bool) false (@cons (bool) false (@nil (bool))))))))) ((@cons (bool) false (@cons (bool) false (@cons (bool) true (@cons (bool) false (@cons (bool) true (@cons (bool) false (@nil (bool))))))))).
