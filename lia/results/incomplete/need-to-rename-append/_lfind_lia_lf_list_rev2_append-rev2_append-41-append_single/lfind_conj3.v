Load LFindLoad.
Load LFindLoad.
From adtind Require Import list_rev2_append.

From lfind Require Import LFind.

From QuickChick Require Import QuickChick.
QCInclude "/home/anabrendel/lfind/benchmarks/lia/sources/_lfind_lia_lf_list_rev2_append-rev2_append-41-append_single/".
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





Lemma conj3: forall (lf1 : lst) (a : lst) (lf3 : lst), @eq lst lf1 (append lf3 a).
Admitted.
QuickChick conj3.