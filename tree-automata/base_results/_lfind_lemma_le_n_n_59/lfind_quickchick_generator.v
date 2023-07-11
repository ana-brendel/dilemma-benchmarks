Load LFindLoad.
Load LFindLoad.
From TreeAutomata Require Import base.

From lfind Require Import LFind.
Require Import Arith.
Require Import BinNat.
From IntMap Require Import Allmaps.

Lemma lfind_state   : le (S O) (S O).
Admitted.

From QuickChick Require Import QuickChick.
QCInclude "/home/anabrendel/lfind/benchmarks/tree-automata/_lfind_lemma_le_n_n_59/".
QCInclude ".".
Extract Constant defNumTests => "50".
Derive Show for nat.

        Derive Arbitrary for nat.

        Instance Dec_Eq_nat : Dec_Eq nat.

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