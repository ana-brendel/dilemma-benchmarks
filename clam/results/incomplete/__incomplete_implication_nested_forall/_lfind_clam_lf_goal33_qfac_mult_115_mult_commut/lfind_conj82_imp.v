Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal33.

From lfind Require Import LFind.

From QuickChick Require Import QuickChick.
QCInclude "/home/anabrendel/lfind/benchmarks/clam/sources/_lfind_clam_lf_goal33_qfac_mult_115_mult_commut/".
QCInclude ".".
Extract Constant defNumTests => "50".


Derive Show for natural.

        Derive Arbitrary for natural.

        Instance Dec_Eq_natural : Dec_Eq natural.

        Proof. dec_eq. Qed.



Lemma conj82_imp: forall (lf2 : natural) (x : natural) (lf4 : natural) (y : natural), forall
  _ : forall y0 : natural, @eq natural (qfac x y0) (mult (qfac x lf4) y0),
@eq natural (mult (qfac x lf4) (mult y x)) lf2.
Admitted.
QuickChick conj82_imp.