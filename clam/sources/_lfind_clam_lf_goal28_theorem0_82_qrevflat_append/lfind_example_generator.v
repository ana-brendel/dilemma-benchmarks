Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal28.

From lfind Require Import LFind.

Lemma lfind_state   (x : tree) (lf3 : lst) (lf1 : lst) (lf2 : lst) : (@eq (tree) x x) /\ (@eq (lst) lf3 lf3) /\ (@eq (lst) lf1 lf1) /\ (@eq (lst) lf2 lf2).
Admitted.

From QuickChick Require Import QuickChick.
QCInclude "/home/anabrendel/lfind/benchmarks/clam/sources/_lfind_clam_lf_goal28_theorem0_82_qrevflat_append/".
QCInclude ".".
Extract Constant defNumTests => "75".
Derive Show for lst.

        Derive Arbitrary for lst.

        Instance Dec_Eq_lst : Dec_Eq lst.

        Proof. dec_eq. Qed.


Derive Show for tree.

        Derive Arbitrary for tree.

        Instance Dec_Eq_tree : Dec_Eq tree.

        Proof. dec_eq. Qed.





Open Scope string_scope.

Parameter print : (lst) -> string -> (lst).
Extract Constant print => "Extract.print".
Definition collect_data (x : tree) (lf3 : lst) (lf1 : lst) (lf2 : lst) :=
 let lfind_var := "x:" ++ "(" ++ show x ++ ")"++ "|" ++"lf3:" ++ "(" ++ show lf3 ++ ")"++ "|" ++"lf1:" ++ "(" ++ show lf1 ++ ")"++ "|" ++"lf2:" ++ "(" ++ show lf2 ++ ")"
 in let lfind_v := print lf2 lfind_var
 in lfind_state x lf3 lf1 lfind_v.
QuickChick collect_data.
Success.