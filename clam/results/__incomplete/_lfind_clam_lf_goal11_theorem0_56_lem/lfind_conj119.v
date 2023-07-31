Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal11.

From lfind Require Import LFind.

From QuickChick Require Import QuickChick.
QCInclude "/home/anabrendel/lfind/benchmarks/clam/sources/_lfind_clam_lf_goal11_theorem0_56_lem/".
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



Lemma conj119: forall (x : lst) (lf4 : lst) (y : lst) (n : natural), @eq lst (rev (lfappend (rev x) lf4)) (lfappend y (Cons n x)).
Admitted.
QuickChick conj119.