Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal57.

Set Printing Depth 1000.
Unset Printing Notations.
Set Printing Implicit.

Definition lfind_eval (z : lst) (y : natural) :=
Cons y z.

Compute lfind_eval ((Nil)) ((Succ Zero)).
