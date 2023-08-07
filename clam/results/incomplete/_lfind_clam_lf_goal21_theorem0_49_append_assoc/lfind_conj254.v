Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal21.

From lfind Require Import LFind.

From QuickChick Require Import QuickChick.
QCInclude "/home/anabrendel/lfind/benchmarks/clam/sources/_lfind_clam_lf_goal21_theorem0_49_append_assoc/".
QCInclude ".".
Extract Constant defNumTests => "50".
Derive Show for lst.

        Derive Arbitrary for lst.

        Instance Dec_Eq_lst : Dec_Eq lst.

        Proof. dec_eq. Qed.




Derive Show for natural.

        Derive Arbitrary for natural.

        Instance Dec_Eq_natural : Dec_Eq natural.

        Proof. dec_eq. Qed.



Lemma conj254: forall (lf8 : lst) (x : lst) (y : lst) (n : natural), @eq lst (rotate (len x) (lfappend (lfappend x y) (Cons n lf8)))
  (lfappend y (Cons n x)).
Admitted.
QuickChick conj254.