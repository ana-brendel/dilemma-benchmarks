Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal10.

From lfind Require Import LFind.

From QuickChick Require Import QuickChick.
QCInclude "/home/anabrendel/lfind/benchmarks/clam/sources/_lfind_clam_lf_goal10_rev_append_54_append_rev_Cons/".
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



Lemma conj3456_imp: forall (l1 : lst) (lf11 : lst) (n : natural) (n0 : natural) (l2 : lst), forall
  _ : forall l3 : lst,
      @eq lst (rev (lfappend l1 l3)) (lfappend (rev l3) lf11),
@eq lst (lfappend (rev (lfappend l1 (Cons n0 l2))) (Cons n Nil))
  (lfappend (lfappend (rev l2) (Cons n0 Nil)) (lfappend lf11 (Cons n Nil))).
Admitted.
QuickChick conj3456_imp.