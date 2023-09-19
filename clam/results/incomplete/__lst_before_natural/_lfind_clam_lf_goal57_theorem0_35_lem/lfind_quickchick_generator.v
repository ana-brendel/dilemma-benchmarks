Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal57.

From lfind Require Import LFind.

Lemma lfind_state   (u : natural) (z : lst) (y : natural) (w : natural) (v : natural) (x : natural) : @eq lst (drop (Succ u) (drop v (drop (Succ w) (Cons x (Cons y z)))))
  (drop (Succ u) (drop v (drop w (Cons x z)))).
Admitted.

From QuickChick Require Import QuickChick.
QCInclude "/home/anabrendel/lfind/benchmarks/clam/sources/_lfind_clam_lf_goal57_theorem0_35_lem/".
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
Definition collect_data (u : natural) (z : lst) (y : natural) (w : natural) (v : natural) (x : natural) :=
 let lfind_var := "u:" ++ "(" ++ show u ++ ")"++ "|" ++"z:" ++ "(" ++ show z ++ ")"++ "|" ++"y:" ++ "(" ++ show y ++ ")"++ "|" ++"w:" ++ "(" ++ show w ++ ")"++ "|" ++"v:" ++ "(" ++ show v ++ ")"++ "|" ++"x:" ++ "(" ++ show x ++ ")"
 in let lfind_v := print x lfind_var
 in lfind_state u z y w v lfind_v.
QuickChick collect_data.
Success.