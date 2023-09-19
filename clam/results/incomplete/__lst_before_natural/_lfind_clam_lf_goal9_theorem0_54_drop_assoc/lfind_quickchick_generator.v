Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal9.

From lfind Require Import LFind.

Lemma lfind_state   (z : lst) (y : natural) (w : natural) (x : natural) : @eq lst (drop x (drop y (drop w z))) (drop y (drop x (drop w z))).
Admitted.

From QuickChick Require Import QuickChick.
QCInclude "/home/anabrendel/lfind/benchmarks/clam/sources/_lfind_clam_lf_goal9_theorem0_54_drop_assoc/".
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

Parameter print : natural -> string -> natural.
Extract Constant print => "Extract.print".
Definition collect_data (z : lst) (y : natural) (w : natural) (x : natural) :=
 let lfind_var := "z:" ++ "(" ++ show z ++ ")"++ "|" ++"y:" ++ "(" ++ show y ++ ")"++ "|" ++"w:" ++ "(" ++ show w ++ ")"++ "|" ++"x:" ++ "(" ++ show x ++ ")"
 in let lfind_v := print x lfind_var
 in lfind_state z y w lfind_v.
QuickChick collect_data.
Success.