Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal8.

Set Printing Depth 1000.
Unset Printing Notations.
Set Printing Implicit.

Definition lfind_eval (l : lst) (n : natural) (x3 : natural) :=
Cons x3 (Cons n l).

Compute lfind_eval ((Nil)) ((Succ Zero)) ((Zero)).
