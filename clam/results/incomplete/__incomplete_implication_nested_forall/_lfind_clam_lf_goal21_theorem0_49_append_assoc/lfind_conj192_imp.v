Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal21.

From lfind Require Import LFind.

From QuickChick Require Import QuickChick.
QCInclude "/home/anabrendel/lfind/benchmarks/clam/sources/_lfind_clam_lf_goal21_theorem0_49_append_assoc/".
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



Lemma conj192_imp: forall (x : lst) (y : lst) (n : natural) (lf7 : natural), forall
  _ : forall y0 : lst, @eq lst (rotate lf7 (lfappend x y0)) (lfappend y0 x),
@eq lst (rotate lf7 (lfappend (lfappend x y) (Cons n Nil)))
  (lfappend y (Cons n x)).
Admitted.
QuickChick conj192_imp.