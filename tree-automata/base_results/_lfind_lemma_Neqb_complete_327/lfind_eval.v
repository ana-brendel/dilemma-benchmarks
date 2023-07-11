Load LFindLoad.
From lfind Require Import LFind.
Require Import Arith.
Require Import BinNat.
From IntMap Require Import Allmaps.
From TreeAutomata Require Import base.

Set Printing Depth 1000.
Unset Printing Notations.
Set Printing Implicit.

Definition lfind_eval (c : ad) (a : ad) :=
N.eqb a c.

Compute lfind_eval ((1)) ((0)).
