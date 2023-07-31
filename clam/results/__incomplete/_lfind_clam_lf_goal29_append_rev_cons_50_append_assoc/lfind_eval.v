Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal29.

Set Printing Depth 1000.
Unset Printing Notations.
Set Printing Implicit.

Definition lfind_eval (lf12 : lst) (n : natural) :=
Cons n lf12.

Compute lfind_eval (Nil) ((Zero)).
