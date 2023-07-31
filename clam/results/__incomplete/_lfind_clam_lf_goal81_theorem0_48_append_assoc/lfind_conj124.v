Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal81.

From lfind Require Import LFind.

From QuickChick Require Import QuickChick.
QCInclude "/home/anabrendel/lfind/benchmarks/clam/sources/_lfind_clam_lf_goal81_theorem0_48_append_assoc/".
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



Lemma conj124: forall (lf5 : lst) (x : lst) (y : lst) (n : natural), @eq lst (lfappend (lfappend (rev y) (Cons n Nil)) x) (lfappend (rev y) lf5).
Admitted.
QuickChick conj124.