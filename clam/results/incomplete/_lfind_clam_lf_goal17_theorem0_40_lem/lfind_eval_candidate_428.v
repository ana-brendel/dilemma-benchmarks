Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal17.

From lfind Require Import LFind.

Lemma lfind_state   (y : lst) (x : lst) : @eq lst (lfappend x y) (lfappend (rev (rev x)) (rev (rev y))).
Admitted.

From QuickChick Require Import QuickChick.
QCInclude "/home/anabrendel/lfind/benchmarks/clam/sources/_lfind_clam_lf_goal17_theorem0_40_lem/".
QCInclude ".".
Extract Constant defNumTests => "50".
Derive Show for lst.

        Derive Arbitrary for lst.

        Instance Dec_Eq_lst : Dec_Eq lst.

        Proof. dec_eq. Qed.






Lemma candidate_428: forall (y : lst) (x : lst) (lf5 : lst), @eq lst (lfappend x y)   (lfappend (rev (lfappend (rev (lfappend x Nil)) Nil)) (rev lf5)).
Admitted.
QuickChick candidate_428.