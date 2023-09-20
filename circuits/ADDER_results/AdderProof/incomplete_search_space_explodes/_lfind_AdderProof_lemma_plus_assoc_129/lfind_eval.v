Load LFindLoad.
From lfind Require Import LFind.
From CircuitsCoqGym Require Import Adder. 
From Circuits Require Import AdderProof.

Set Printing Depth 1000.
Unset Printing Notations.
Set Printing Implicit.

Definition lfind_eval (lf13 : nat) (l : list bool) (a0 : bool) :=
S
  (S
     (Nat.add (bool_to_nat a0)
        (Nat.add (Nat.add (BV_to_nat l) lf13) (Nat.add (BV_to_nat l) lf13)))).

Compute lfind_eval (O) ((@cons (bool) true (@cons (bool) true (@cons (bool) false (@cons (bool) false (@nil (bool))))))) ((true)).
