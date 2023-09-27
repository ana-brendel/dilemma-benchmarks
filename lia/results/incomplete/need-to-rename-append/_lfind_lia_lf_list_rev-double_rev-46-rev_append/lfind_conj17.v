Load LFindLoad.
Load LFindLoad.
From adtind Require Import list_rev.

From lfind Require Import LFind.

From QuickChick Require Import QuickChick.
QCInclude "/home/anabrendel/lfind/benchmarks/lia/sources/_lfind_lia_lf_list_rev-double_rev-46-rev_append/".
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





Lemma conj17: forall (lf2 : lst) (lf4 : lst), @eq lst (rev lf2) lf4.
Admitted.
QuickChick conj17.