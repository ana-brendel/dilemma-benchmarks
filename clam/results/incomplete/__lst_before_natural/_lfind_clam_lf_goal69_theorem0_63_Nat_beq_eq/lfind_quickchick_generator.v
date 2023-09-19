Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal69.

From lfind Require Import LFind.
Require Import Arith.

Lemma lfind_state   (n : natural) (z : lst) (y : natural) (x : natural) : @eq bool (orb (lfeqb x n) (mem x z)) true.
Admitted.

From QuickChick Require Import QuickChick.
QCInclude "/home/anabrendel/lfind/benchmarks/clam/sources/_lfind_clam_lf_goal69_theorem0_63_Nat_beq_eq/".
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

Parameter print : natural -> string -> natural.
Extract Constant print => "Extract.print".
Definition collect_data (n : natural) (z : lst) (y : natural) (x : natural) :=
 let lfind_var := "n:" ++ "(" ++ show n ++ ")"++ "|" ++"z:" ++ "(" ++ show z ++ ")"++ "|" ++"y:" ++ "(" ++ show y ++ ")"++ "|" ++"x:" ++ "(" ++ show x ++ ")"
 in let lfind_v := print x lfind_var
 in lfind_state n z y lfind_v.
QuickChick collect_data.
Success.