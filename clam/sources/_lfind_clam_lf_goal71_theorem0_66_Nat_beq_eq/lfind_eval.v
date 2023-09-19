Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal71.

Set Printing Depth 1000.
Unset Printing Notations.
Set Printing Implicit.

Definition lfind_eval (z : lst) (x : natural) :=
@eq natural (Succ (if lfeqb x n then Succ (count x z) else count x z))
  (Succ (count x z)).

Compute lfind_eval ((Nil)) ((Succ Zero)).
