Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal84.

From lfind Require Import LFind.

From QuickChick Require Import QuickChick.
QCInclude "/home/anabrendel/lfind/benchmarks/clam/sources/_lfind_clam_lf_goal84_theorem0_111_mult_commut/".
QCInclude ".".
Extract Constant defNumTests => "50".


Derive Show for natural.

        Derive Arbitrary for natural.

        Instance Dec_Eq_natural : Dec_Eq natural.

        Proof. dec_eq. Qed.



Lemma conj18_imp: forall (lf5 : natural) (x : natural) (lf1 : natural) (y : natural), forall _ : forall y0 : natural, @eq natural (mult lf5 y0) (qfac x y0),
@eq natural (mult lf5 (mult x y)) lf1.
Admitted.
QuickChick conj18_imp.