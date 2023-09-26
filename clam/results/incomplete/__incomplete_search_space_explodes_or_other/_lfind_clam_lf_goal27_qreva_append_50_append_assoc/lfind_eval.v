Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal27.

Set Printing Depth 1000.
Unset Printing Notations.
Set Printing Implicit.

Definition lfind_eval (y : lst) (n0 : natural) :=
Cons n0 y.

Compute lfind_eval ((Cons Zero Nil)) ((Zero)).
