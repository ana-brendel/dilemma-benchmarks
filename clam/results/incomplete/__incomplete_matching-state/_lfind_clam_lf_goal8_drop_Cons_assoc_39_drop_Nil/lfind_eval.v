Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal8.

Set Printing Depth 1000.
Unset Printing Notations.
Set Printing Implicit.

Definition lfind_eval (x2 : natural) :=
fun (_ : natural) (z : lst) => drop x2 z.

Compute lfind_eval ((Succ Zero)).
