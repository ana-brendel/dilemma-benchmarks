Load LFindLoad.
From lfind Require Import LFind.
Require Import Arith.
Require Import BinNat.
From IntMap Require Import Allmaps.
From TreeAutomata Require Import base.

Set Printing Depth 1000.
Unset Printing Notations.
Set Printing Implicit.
Notation A := nat.

Definition lfind_eval (e : A) (x0 : ad) :=
M1 A x0 e.

Compute lfind_eval ((0)) ((N0)) .
