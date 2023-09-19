Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal49.

From lfind Require Import LFind.
Require Import Arith.

Lemma lfind_state   (n : natural) (y : lst) : @eq bool (orb (lfeqb n n) (mem n y)) true.
Admitted.

From QuickChick Require Import QuickChick.
QCInclude "/home/anabrendel/lfind/benchmarks/clam/sources/_lfind_clam_lf_goal49_theorem0_158_eqb_refl/".
QCInclude ".".
Extract Constant defNumTests => "50".
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

Parameter print : lst -> string -> lst.
Extract Constant print => "Extract.print".
Definition collect_data (n : natural) (y : lst) :=
 let lfind_var := "n:" ++ "(" ++ show n ++ ")"++ "|" ++"y:" ++ "(" ++ show y ++ ")"
 in let lfind_v := print y lfind_var
 in lfind_state n lfind_v.
QuickChick collect_data.
Success.