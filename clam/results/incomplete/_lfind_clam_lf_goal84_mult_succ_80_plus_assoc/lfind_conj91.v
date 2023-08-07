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



Lemma conj91: forall (lf6 : natural) (lf5 : natural) (x : natural) (y : natural) (lf7 : natural), @eq natural (Succ (plus (plus lf6 y) x)) (plus lf5 lf7).
Admitted.
QuickChick conj91.