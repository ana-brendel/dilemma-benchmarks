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



Lemma conj510_imp: forall (lf8 : lst) (x1 : tree) (x2 : tree) (n : natural), forall _ : forall y : lst, @eq lst (lfappend lf8 y) (qrevaflat x1 y),
@eq lst (lfappend (lfappend lf8 (Cons n (revflat x2))) Nil)
  (qrevaflat x1 (Cons n (qrevaflat x2 Nil))).
Admitted.
QuickChick conj510_imp.