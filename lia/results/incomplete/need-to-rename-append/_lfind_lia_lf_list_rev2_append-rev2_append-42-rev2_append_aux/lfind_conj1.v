Load LFindLoad.
Load LFindLoad.
From adtind Require Import list_rev2_append.

From lfind Require Import LFind.

From QuickChick Require Import QuickChick.
QCInclude "/home/anabrendel/lfind/benchmarks/lia/sources/_lfind_lia_lf_list_rev2_append-rev2_append-42-rev2_append_aux/".
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





Lemma conj1: forall (lf2 : lst) (lf1 : lst), @eq lst lf1 lf2.
Admitted.
QuickChick conj1.