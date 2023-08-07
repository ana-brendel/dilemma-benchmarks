Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal76.

From lfind Require Import LFind.

Lemma lfind_state   (n : natural) (x2 : tree) (y : lst) (x1 : tree) : @eq lst (lfappend (lfappend (revflat x1) (Cons n (revflat x2))) y)
  (qrevaflat x1 (Cons n (qrevaflat x2 y))).
Admitted.

From QuickChick Require Import QuickChick.
QCInclude "/home/anabrendel/lfind/benchmarks/clam/sources/_lfind_clam_lf_goal76_theorem0_52_append_assoc/".
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



Open Scope string_scope.

Parameter print : tree -> string -> tree.
Extract Constant print => "Extract.print".
Definition collect_data (n : natural) (x2 : tree) (y : lst) (x1 : tree) :=
 let lfind_var := "n:" ++ "(" ++ show n ++ ")"++ "|" ++"x2:" ++ "(" ++ show x2 ++ ")"++ "|" ++"y:" ++ "(" ++ show y ++ ")"++ "|" ++"x1:" ++ "(" ++ show x1 ++ ")"
 in let lfind_v := print x1 lfind_var
 in lfind_state n x2 y lfind_v.
QuickChick collect_data.
Success.