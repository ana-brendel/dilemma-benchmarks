Load LFindLoad.
Load LFindLoad.
From TreeAutomata Require Import defs.

From lfind Require Import LFind.
Require Import Bool.
Require Import Arith.
Require Import ZArith.
From IntMap Require Import Allmaps.
Require Import EqNat.
From TreeAutomataCoqGym Require Import bases.

Lemma lfind_state   (s : state) : not (state_in_dta (M0 state) s).
Admitted.

From QuickChick Require Import QuickChick.
QCInclude "/home/anabrendel/lfind/benchmarks/tree-automata/defs_tests/_lfind_lemma_in_M0_false_271/".
QCInclude ".".
Extract Constant defNumTests => "50".


Derive Show for state.

        Derive Arbitrary for state.

        Instance Dec_Eq_state : Dec_Eq state.

        Proof. dec_eq. Qed.



Open Scope string_scope.

Parameter print : state -> string -> state.
Extract Constant print => "Extract.print".
Definition collect_data (s : state) :=
 let lfind_var := "s:" ++ "(" ++ show s ++ ")"
 in let lfind_v := print s lfind_var
 in lfind_state  lfind_v.
QuickChick collect_data.
Success.