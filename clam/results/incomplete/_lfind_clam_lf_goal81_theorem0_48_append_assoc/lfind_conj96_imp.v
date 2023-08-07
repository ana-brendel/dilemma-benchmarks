Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal81.

From lfind Require Import LFind.

From QuickChick Require Import QuickChick.
QCInclude "/home/anabrendel/lfind/benchmarks/clam/sources/_lfind_clam_lf_goal81_theorem0_48_append_assoc/".
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



Lemma conj96_imp: forall (x : lst) (y : lst) (n : natural) (lf7 : lst), forall
  _ : forall y0 : lst, @eq lst (qreva (qreva x y0) lf7) (lfappend (rev y0) x),
@eq lst (lfappend (lfappend (rev y) (Cons n lf7)) x)
  (lfappend (rev y) (Cons n x)).
Admitted.
QuickChick conj96_imp.