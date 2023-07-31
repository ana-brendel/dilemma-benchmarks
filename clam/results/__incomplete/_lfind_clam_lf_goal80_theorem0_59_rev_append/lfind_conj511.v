Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal80.

From lfind Require Import LFind.

From QuickChick Require Import QuickChick.
QCInclude "/home/anabrendel/lfind/benchmarks/clam/sources/_lfind_clam_lf_goal80_theorem0_59_rev_append/".
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



Lemma conj511: forall (lf6 : lst) (x : lst) (y : lst) (n : natural), @eq lst (rev (lfappend (lfappend (rev x) (Cons n Nil)) (rev y)))
  (lfappend y lf6).
Admitted.
QuickChick conj511.