Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal83.

Set Printing Depth 1000.
Unset Printing Notations.
Set Printing Implicit.

Definition lfind_eval (x : lst) (n : natural) :=
Cons n x.

Compute lfind_eval ((Nil)) ((Zero)).
