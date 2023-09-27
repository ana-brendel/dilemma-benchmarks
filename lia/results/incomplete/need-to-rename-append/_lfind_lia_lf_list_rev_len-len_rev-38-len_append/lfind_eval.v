Load LFindLoad.
From lfind Require Import LFind.
Require Import Nat.
From adtind Require Import list_rev_len.

Set Printing Depth 1000.
Unset Printing Notations.
Set Printing Implicit.

Definition lfind_eval (x : lst) :=
rev x.

Compute lfind_eval ((Nil)).
