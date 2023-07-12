Load LFindLoad.
Load LFindLoad.
From TreeAutomata Require Import base.

From lfind Require Import LFind.
Require Import Arith.
Require Import BinNat.
From IntMap Require Import Allmaps.

Lemma lfind_state   : not (@eq bool true false).
Admitted.

From QuickChick Require Import QuickChick.
QCInclude "/home/anabrendel/lfind/benchmarks/tree-automata/_lfind_lemma_diff_true_false_228/".
QCInclude ".".
Extract Constant defNumTests => "50".
Derive Show for bool.

        Derive Arbitrary for bool.

        Instance Dec_Eq_bool : Dec_Eq bool.

        Proof. dec_eq. Qed.





Open Scope string_scope.

Parameter print : nat -> string -> nat.
Extract Constant print => "Extract.print".
Definition collect_data :=
 let lfind_var := 
 in let lfind_v := print  lfind_var
 in lfind_state  lfind_v.
QuickChick collect_data.
Success.