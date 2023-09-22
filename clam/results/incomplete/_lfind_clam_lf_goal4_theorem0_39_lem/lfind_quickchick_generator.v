Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal4.

From lfind Require Import LFind.

Lemma lfind_state   (n : natural) (x : lst) (h : natural) : (@eq natural (len (lfappend x (Cons n x))) (Succ h)) -> @eq natural h h.
Admitted.

From QuickChick Require Import QuickChick.
QCInclude "/home/anabrendel/lfind/benchmarks/clam/sources/_lfind_clam_lf_goal4_theorem0_39_lem/".
QCInclude ".".
Extract Constant defNumTests => "50".

Derive Show for natural.
Derive Arbitrary for natural.
Instance Dec_Eq_natural : Dec_Eq natural.
Proof. dec_eq. Qed.

Derive Show for lst.
Derive Arbitrary for lst.
Instance Dec_Eq_lst : Dec_Eq lst.
Proof. dec_eq. Qed.

Open Scope string_scope.

Parameter print : natural -> string -> natural.
Extract Constant print => "Extract.print".
Definition collect_data (n : natural) (x : lst) (h : natural) :=
 let lfind_var := "n:" ++ "(" ++ show n ++ ")"++ "|" ++"x:" ++ "(" ++ show x ++ ")" ++"|h:" ++ "(" ++ show h ++ ")"
 in let lfind_v := print h lfind_var
 in lfind_state n x lfind_v.
QuickChick collect_data.
Success.