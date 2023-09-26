Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal30.

From lfind Require Import LFind.

From QuickChick Require Import QuickChick.
QCInclude "/home/anabrendel/lfind/benchmarks/clam/sources/_lfind_clam_lf_goal30_rev_append_57_append_nil/".
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



Lemma conj127_imp: forall (lf6 : lst) (l1 : lst) (n : natural), forall
  _ : forall l2 : lst, @eq lst (rev (lfappend l1 l2)) (lfappend (rev l2) lf6),
@eq lst (lfappend (rev (lfappend l1 Nil)) (Cons n Nil))
  (lfappend lf6 (Cons n Nil)).
Admitted.
QuickChick conj127_imp.