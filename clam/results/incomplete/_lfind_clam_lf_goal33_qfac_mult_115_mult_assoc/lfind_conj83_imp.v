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



Lemma conj83_imp: forall (lf6 : natural) (x : natural) (lf4 : natural) (y : natural), forall _ : forall y0 : natural, @eq natural (qfac x y0) (mult lf4 y0),
@eq natural (mult lf4 lf6) (mult (mult lf4 x) y).
Admitted.
QuickChick conj83_imp.