Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal28.

From lfind Require Import LFind.

From QuickChick Require Import QuickChick.
QCInclude "/home/anabrendel/lfind/benchmarks/clam/sources/_lfind_clam_lf_goal28_qrevflat_append_69_append_nil/".
QCInclude ".".
Extract Constant defNumTests => "50".
Derive Show for lst.

        Derive Arbitrary for lst.

        Instance Dec_Eq_lst : Dec_Eq lst.

        Proof. dec_eq. Qed.


Derive Show for tree.

        Derive Arbitrary for tree.

        Instance Dec_Eq_tree : Dec_Eq tree.

        Proof. dec_eq. Qed.




Derive Show for natural.

        Derive Arbitrary for natural.

        Instance Dec_Eq_natural : Dec_Eq natural.

        Proof. dec_eq. Qed.



Lemma conj511: forall (lf6 : lst) (x1 : tree) (n : natural) (x2 : tree), @eq lst (lfappend (lfappend (revflat x1) (Cons n (revflat x2))) Nil)
  (qrevaflat x1 (Cons n lf6)).
Admitted.
QuickChick conj511.