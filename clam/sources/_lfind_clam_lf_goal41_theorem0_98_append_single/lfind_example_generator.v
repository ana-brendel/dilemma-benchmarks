Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal41.

From lfind Require Import LFind.
Require Import Arith.

Lemma lfind_state   (n : natural) (y : lst) (x : lst) (lf3 : lst) (lf1 : bool) (lf4 : bool) (lf2 : lst) : (@eq (natural) n n) /\ (@eq (lst) y y) /\ (@eq (lst) x x) /\ (@eq (lst) lf3 lf3) /\ (@eq (bool) lf1 lf1) /\ (@eq (bool) lf4 lf4) /\ (@eq (lst) lf2 lf2).
Admitted.

From QuickChick Require Import QuickChick.
QCInclude "/home/anabrendel/lfind/benchmarks/clam/sources/_lfind_clam_lf_goal41_theorem0_98_append_single/".
QCInclude ".".
Extract Constant defNumTests => "75".
Derive Show for bool.

        Derive Arbitrary for bool.

        Instance Dec_Eq_bool : Dec_Eq bool.

        Proof. dec_eq. Qed.


Derive Show for lst.

        Derive Arbitrary for lst.

        Instance Dec_Eq_lst : Dec_Eq lst.

        Proof. dec_eq. Qed.




Derive Show for natural.

        Derive Arbitrary for natural.

        Instance Dec_Eq_natural : Dec_Eq natural.

        Proof. dec_eq. Qed.



Open Scope string_scope.

Parameter print : (lst) -> string -> (lst).
Extract Constant print => "Extract.print".
Definition collect_data (n : natural) (y : lst) (x : lst) (lf3 : lst) (lf1 : bool) (lf4 : bool) (lf2 : lst) :=
 let lfind_var := "n:" ++ "(" ++ show n ++ ")"++ "|" ++"y:" ++ "(" ++ show y ++ ")"++ "|" ++"x:" ++ "(" ++ show x ++ ")"++ "|" ++"lf3:" ++ "(" ++ show lf3 ++ ")"++ "|" ++"lf1:" ++ "(" ++ show lf1 ++ ")"++ "|" ++"lf4:" ++ "(" ++ show lf4 ++ ")"++ "|" ++"lf2:" ++ "(" ++ show lf2 ++ ")"
 in let lfind_v := print lf2 lfind_var
 in lfind_state n y x lf3 lf1 lf4 lfind_v.
QuickChick collect_data.
Success.