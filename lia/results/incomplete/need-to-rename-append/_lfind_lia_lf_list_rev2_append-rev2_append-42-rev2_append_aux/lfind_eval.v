Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import list_rev2_append.

Set Printing Depth 1000.
Unset Printing Notations.
Set Printing Implicit.

Definition lfind_eval (x : lst) :=
rev2 x Nil.

Compute lfind_eval ((Nil)).
