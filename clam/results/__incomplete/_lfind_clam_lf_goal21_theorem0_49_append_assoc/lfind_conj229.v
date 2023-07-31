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



Lemma conj229: forall (lf6 : lst) (lf5 : lst) (x : lst) (lf4 : lst) (y : lst), @eq lst (rotate (len x) (lfappend lf4 lf5)) (lfappend y lf6).
Admitted.
QuickChick conj229.