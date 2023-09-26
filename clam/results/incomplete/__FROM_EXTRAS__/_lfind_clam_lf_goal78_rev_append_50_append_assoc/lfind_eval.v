Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal78.

Set Printing Depth 1000.
Unset Printing Notations.
Set Printing Implicit.

Definition lfind_eval (lf8 : lst) (n : natural) (lf6 : lst) (lf7 : lst) :=
lfappend (lfappend lf7 lf6) (Cons n lf8).

Compute lfind_eval (Nil) ((Zero)) (Cons Zero Nil) (Nil).
