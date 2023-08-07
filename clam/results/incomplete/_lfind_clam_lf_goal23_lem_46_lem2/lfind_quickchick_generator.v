Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal23.

From lfind Require Import LFind.

Lemma lfind_state   (l2 : lst) (n : natural) (l1 : lst) : @eq natural (Succ (len (lfappend l2 l1))) (len (lfappend l2 (Cons n l1))).
Admitted.

From QuickChick Require Import QuickChick.
QCInclude "/home/anabrendel/lfind/benchmarks/clam/sources/_lfind_clam_lf_goal23_lem_46_lem2/".
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
Definition collect_data (l2 : lst) (n : natural) (l1 : lst) :=
 let lfind_var := "l2:" ++ "(" ++ show l2 ++ ")"++ "|" ++"n:" ++ "(" ++ show n ++ ")"++ "|" ++"l1:" ++ "(" ++ show l1 ++ ")"
 in let lfind_v := print l1 lfind_var
 in lfind_state l2 n lfind_v.
QuickChick collect_data.
Success.