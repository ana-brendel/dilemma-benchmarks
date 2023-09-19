Load LFindLoad.
From lfind Require Import LFind.
From CircuitsCoqGym Require Import Adder. 
From Circuits Require Import AdderProof.

Set Printing Depth 1000.
Unset Printing Notations.
Set Printing Implicit.

Definition lfind_eval (lf17 : bool) (l0 : list bool) (lf16 : nat) :=
Nat.add (Nat.add lf16 (BV_to_nat l0)) (bool_to_nat lf17).

Compute lfind_eval (true) ((@cons (bool) false (@cons (bool) false (@cons (bool) false (@cons (bool) true (@cons (bool) true (@nil (bool)))))))) (S (S (S (S (S (S (S (S (S (S (S (S (S (S (S (S (S (S (S (S (S (S (S (S (S O))))))))))))))))))))))))).
