Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal29.

From lfind Require Import LFind.

From QuickChick Require Import QuickChick.
QCInclude "/home/anabrendel/lfind/benchmarks/clam/sources/_lfind_clam_lf_goal29_rev_append_59_append_rev_cons/".
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



Lemma conj3964_imp: forall (lf10 : lst) (l1 : lst) (n : natural) (n0 : natural) (l2 : lst), forall
  _ : @eq lst (rev (lfappend (Cons n l1) l2))
        (lfappend lf10 (rev (Cons n l1))),
@eq lst (lfappend (rev (lfappend l1 (Cons n0 l2))) (Cons n Nil))
  (lfappend (lfappend lf10 (Cons n0 Nil)) (lfappend (rev l1) (Cons n Nil))).
Admitted.
QuickChick conj3964_imp.