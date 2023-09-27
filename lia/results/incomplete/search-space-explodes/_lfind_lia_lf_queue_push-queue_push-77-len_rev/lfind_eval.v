Load LFindLoad.
From lfind Require Import LFind.
Require Import Nat.
From adtind Require Import queue_push.

Set Printing Depth 1000.
Unset Printing Notations.
Set Printing Implicit.

Definition lfind_eval (l0 : lst) :=
len l0.

Compute lfind_eval ((Cons 3 Nil)).
