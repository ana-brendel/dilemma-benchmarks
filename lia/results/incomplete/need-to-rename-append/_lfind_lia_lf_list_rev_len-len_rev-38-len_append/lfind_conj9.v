Load LFindLoad.
Load LFindLoad.
From adtind Require Import list_rev_len.

From lfind Require Import LFind.
Require Import Nat.

From QuickChick Require Import QuickChick.
QCInclude "/home/anabrendel/lfind/benchmarks/lia/sources/_lfind_lia_lf_list_rev_len-len_rev-38-len_append/".
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





Lemma conj9: forall (lf5 : nat) (lf1 : nat), @eq nat lf1 (S lf5).
Admitted.
QuickChick conj9.