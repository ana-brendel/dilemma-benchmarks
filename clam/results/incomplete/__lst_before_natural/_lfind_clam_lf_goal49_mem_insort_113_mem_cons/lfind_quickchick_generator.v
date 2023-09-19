Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal49.

From lfind Require Import LFind.
Require Import Arith.

Lemma lfind_state   (n0 : natural) (n : natural) (l : lst) (x : natural) : or (@eq natural x n) (@eq bool (mem x (Cons n0 l)) true).
Admitted.

From QuickChick Require Import QuickChick.
QCInclude "/home/anabrendel/lfind/benchmarks/clam/sources/_lfind_clam_lf_goal49_mem_insort_113_mem_cons/".
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
Definition collect_data (n0 : natural) (n : natural) (l : lst) (x : natural) :=
 let lfind_var := "n0:" ++ "(" ++ show n0 ++ ")"++ "|" ++"n:" ++ "(" ++ show n ++ ")"++ "|" ++"l:" ++ "(" ++ show l ++ ")"++ "|" ++"x:" ++ "(" ++ show x ++ ")"
 in let lfind_v := print x lfind_var
 in lfind_state n0 n l lfind_v.
QuickChick collect_data.
Success.