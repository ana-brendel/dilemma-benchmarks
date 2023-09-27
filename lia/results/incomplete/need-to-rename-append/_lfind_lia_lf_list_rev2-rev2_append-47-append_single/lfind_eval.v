Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import list_rev2.

Set Printing Depth 1000.
Unset Printing Notations.
Set Printing Implicit.

Definition lfind_eval (a : lst) (n : nat) :=
Cons n a.

Compute lfind_eval ((Nil)) ((0)).
