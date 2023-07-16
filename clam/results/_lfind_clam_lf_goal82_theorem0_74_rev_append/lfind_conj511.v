Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal82.

From lfind Require Import LFind.
Require Import Arith. 

From QuickChick Require Import QuickChick.
QCInclude "/home/anabrendel/lfind/benchmarks/clam/sources/_lfind_clam_lf_goal82_theorem0_74_rev_append/".
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



Lemma conj511: forall (lf6 : lst) (x : lst) (y : lst) (n : natural), @eq lst (qreva (qreva x (lfappend (rev lf6) (rev y))) Nil)
  (lfappend y (Cons n x)).
Admitted.
QuickChick conj511.