Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal70.

Set Printing Depth 1000.
Unset Printing Notations.
Set Printing Implicit.

Definition lfind_eval  :=
if lfeqb x n then Succ (count y x) else count y x.

Compute lfind_eval .
