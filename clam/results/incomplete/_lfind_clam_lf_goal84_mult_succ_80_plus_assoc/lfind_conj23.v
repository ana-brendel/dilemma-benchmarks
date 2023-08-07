Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal84.

From lfind Require Import LFind.

From QuickChick Require Import QuickChick.
QCInclude "/home/anabrendel/lfind/benchmarks/clam/sources/_lfind_clam_lf_goal84_mult_succ_80_plus_assoc/".
QCInclude ".".
Extract Constant defNumTests => "50".


Derive Show for natural.

        Derive Arbitrary for natural.

        Instance Dec_Eq_natural : Dec_Eq natural.

        Proof. dec_eq. Qed.



Lemma conj23: forall (x : natural) (lf7 : natural) (lf3 : natural), @eq natural (Succ lf3) (plus (mult x lf7) lf7).
Admitted.
QuickChick conj23.