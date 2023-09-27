Load LFindLoad.
Load LFindLoad.
From adtind Require Import list_rev2.

From lfind Require Import LFind.

From QuickChick Require Import QuickChick.
QCInclude "/home/anabrendel/lfind/benchmarks/lia/sources/_lfind_lia_lf_list_rev2-rev_eq_rev2-59-rev2_append/".
QCInclude ".".
Extract Constant defNumTests => "50".
Derive Show for nat.

        Derive Arbitrary for nat.

        Instance Dec_Eq_nat : Dec_Eq nat.

        Proof. dec_eq. Qed.


Derive Show for lst.

        Derive Arbitrary for lst.

        Instance Dec_Eq_lst : Dec_Eq lst.

        Proof. dec_eq. Qed.





Lemma conj9: forall (lf2 : lst) (lf4 : lst) (lf3 : lst), @eq lst lf2 (append lf4 lf3).
Admitted.
QuickChick conj9.