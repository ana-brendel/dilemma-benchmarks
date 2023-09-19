Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal70.

Set Printing Depth 1000.
Unset Printing Notations.
Set Printing Implicit.

Definition lfind_eval (x : natural) (y : lst) :=
@eq natural
  (if lfeqb x x
   then Succ (if lfeqb x n then Succ (count y x) else count y x)
   else if lfeqb x n then Succ (count y x) else count y x) 
  (Succ (count y x)).

Compute lfind_eval ((Succ Zero)) ((Cons Zero (Cons Zero (Cons (Succ Zero) Nil)))).
