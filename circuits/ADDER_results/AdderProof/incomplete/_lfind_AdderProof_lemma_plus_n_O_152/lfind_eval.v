Load LFindLoad.
From lfind Require Import LFind.
From CircuitsCoqGym Require Import Adder. 
From Circuits Require Import AdderProof.

Set Printing Depth 1000.
Unset Printing Notations.
Set Printing Implicit.

Definition lfind_eval (lf10 : nat) (l : list bool) :=
Nat.add (BV_to_nat l) lf10.

Compute lfind_eval (S (S (S (S (S (S (S (S (S (S (S (S (S (S (S (S (S O))))))))))))))))) ((@cons (bool) false (@cons (bool) true (@cons (bool) false (@cons (bool) true (@cons (bool) false (@nil (bool)))))))).
