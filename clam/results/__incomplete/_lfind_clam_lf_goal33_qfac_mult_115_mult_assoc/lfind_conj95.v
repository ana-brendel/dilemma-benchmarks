Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal33.

From lfind Require Import LFind.

From QuickChick Require Import QuickChick.
QCInclude "/home/anabrendel/lfind/benchmarks/clam/sources/_lfind_clam_lf_goal33_qfac_mult_115_mult_assoc/".
QCInclude ".".
Extract Constant defNumTests => "50".


Derive Show for natural.

        Derive Arbitrary for natural.

        Instance Dec_Eq_natural : Dec_Eq natural.

        Proof. dec_eq. Qed.



Lemma conj95: forall (lf6 : natural) (x : natural) (y : natural) (lf7 : natural), @eq natural (mult (qfac x (Succ lf7)) lf6)
  (mult (mult (qfac x (Succ lf7)) x) y).
Admitted.
QuickChick conj95.