Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal30.

From lfind Require Import LFind.

From QuickChick Require Import QuickChick.
QCInclude "/home/anabrendel/lfind/benchmarks/clam/sources/_lfind_clam_lf_goal30_rev_append_54_append_rev_cons/".
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



Lemma conj3945: forall (lf10 : lst) (lf6 : lst) (l1 : lst) (lf9 : lst) (n0 : natural), @eq lst (lfappend (rev lf6) lf9)
  (lfappend (lfappend lf10 (Cons n0 Nil)) (lfappend (rev l1) lf9)).
Admitted.
QuickChick conj3945.