Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal10.

Set Printing Depth 1000.
Unset Printing Notations.
Set Printing Implicit.

Definition lfind_eval (lf12 : lst) (n0 : natural) (l2 : lst) :=
lfappend (rev l2) (Cons n0 lf12).

Compute lfind_eval (Nil) ((Zero)) ((Cons Zero Nil)).
