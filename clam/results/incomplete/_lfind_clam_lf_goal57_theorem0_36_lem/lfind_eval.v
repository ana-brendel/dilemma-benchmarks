Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal57.

Set Printing Depth 1000.
Unset Printing Notations.
Set Printing Implicit.

Definition lfind_eval (lf6 : lst) (w : natural) (v : natural) :=
drop (Succ v) (drop (Succ w) lf6).

Compute lfind_eval (Cons (Succ Zero) (Cons Zero (Cons Zero Nil))) ((Zero)) ((Succ Zero)).
