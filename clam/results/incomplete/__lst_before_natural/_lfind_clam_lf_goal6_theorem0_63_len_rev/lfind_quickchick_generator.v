Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal6.

From lfind Require Import LFind.

Lemma lfind_state   (y : lst) (x : lst) : @eq natural (len (rev (lfappend x y))) (plus (len x) (len y)).
Admitted.

From QuickChick Require Import QuickChick.
QCInclude "/home/anabrendel/lfind/benchmarks/clam/sources/_lfind_clam_lf_goal6_theorem0_63_len_rev/".
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



Open Scope string_scope.

Parameter print : lst -> string -> lst.
Extract Constant print => "Extract.print".
Definition collect_data (y : lst) (x : lst) :=
 let lfind_var := "y:" ++ "(" ++ show y ++ ")"++ "|" ++"x:" ++ "(" ++ show x ++ ")"
 in let lfind_v := print x lfind_var
 in lfind_state y lfind_v.
QuickChick collect_data.
Success.