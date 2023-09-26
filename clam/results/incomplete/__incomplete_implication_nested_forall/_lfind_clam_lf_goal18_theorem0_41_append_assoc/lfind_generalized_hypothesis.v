Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal18.

From lfind Require Import LFind.

From QuickChick Require Import QuickChick.
QCInclude "/home/anabrendel/lfind/benchmarks/clam/sources/_lfind_clam_lf_goal18_theorem0_41_append_assoc/".
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



Definition generalized_hypothesis : forall y0 : lst,
@eq lst (rev (lfappend (Cons Zero Nil) y0)) (lfappend (rev y0) (Nil)).
Admitted.
QuickChick generalized_hypothesis.