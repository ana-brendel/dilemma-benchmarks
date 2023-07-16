Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal31.

From lfind Require Import LFind.

Lemma lfind_state   (y : lst) : @eq lst (qreva y Nil) (lfappend (qreva y Nil) Nil).
Admitted.

From QuickChick Require Import QuickChick.
QCInclude "/home/anabrendel/lfind/benchmarks/clam/sources/_lfind_clam_lf_goal31_qreva_append_60_append_nil/".
QCInclude ".".
Extract Constant defNumTests => "50".
Derive Show for lst.

        Derive Arbitrary for lst.

        Instance Dec_Eq_lst : Dec_Eq lst.

        Proof. dec_eq. Qed.





Open Scope string_scope.

Parameter print : lst -> string -> lst.
Extract Constant print => "Extract.print".
Definition collect_data (y : lst) :=
 let lfind_var := "y:" ++ "(" ++ show y ++ ")"
 in let lfind_v := print y lfind_var
 in lfind_state  lfind_v.
QuickChick collect_data.
Success.