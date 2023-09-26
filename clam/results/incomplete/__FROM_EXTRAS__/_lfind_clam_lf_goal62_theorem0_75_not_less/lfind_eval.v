Load LFindLoad.
From lfind Require Import LFind.
Require Import Arith.
From adtind Require Import goal62.

Set Printing Depth 1000.
Unset Printing Notations.
Set Printing Implicit.

Definition lfind_eval  :=
@eq bool
  match (if less y n0 then Cons y (Cons n0 x) else Cons n0 (insort y x)) with
  | Cons z _ =>
      andb
        (sorted
           (if less y n0 then Cons y (Cons n0 x) else Cons n0 (insort y x)))
        (leq n z)
  | Nil => true
  end true.

Compute lfind_eval .
