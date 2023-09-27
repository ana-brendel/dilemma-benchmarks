Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import list_rev2.

Set Printing Depth 1000.
Unset Printing Notations.
Set Printing Implicit.

Definition lfind_eval (n : nat) (x : lst) :=
rev2 x (Cons n Nil).

Compute lfind_eval ((0)) ((Nil)).
