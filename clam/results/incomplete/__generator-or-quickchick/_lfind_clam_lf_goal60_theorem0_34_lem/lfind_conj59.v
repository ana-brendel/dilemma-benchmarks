Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal60.

From lfind Require Import LFind.

From QuickChick Require Import QuickChick.
QCInclude "/home/anabrendel/lfind/benchmarks/clam/sources/_lfind_clam_lf_goal60_theorem0_34_lem/".
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



Lemma conj59: forall (lf6 : lst) (lf5 : lst) (y : lst) (z : natural), @eq lst (rev (lfappend y (Cons z lf6))) (Cons z lf5).
Admitted.
QuickChick conj59.