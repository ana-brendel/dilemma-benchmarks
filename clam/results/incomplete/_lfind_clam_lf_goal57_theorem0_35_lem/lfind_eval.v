Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal57.

Set Printing Depth 1000.
Unset Printing Notations.
Set Printing Implicit.

Definition lfind_eval (lf9 : lst) (w : natural) :=
drop w lf9.

Compute lfind_eval (Cons Zero (Cons (Succ Zero) Nil)) ((Zero)).
