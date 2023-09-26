Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal71.

Set Printing Depth 1000.
Unset Printing Notations.
Set Printing Implicit.

Definition lfind_eval  :=
fun _ : bool => natural.

Compute lfind_eval .
