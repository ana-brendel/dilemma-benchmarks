From QuickChick Require Import QuickChick.
Set Warnings "-extraction-opaque-accessed,-extraction".
From Coq Require Export Lists.List.
Export ListNotations.
From Coq Require Extraction.
Extraction Language OCaml.
From LFindToo Require Import LFindToo.
Require Import lia_heap_benchmarks.Definitions.
Require Import lia_heap_benchmarks.Decide.
Require Import Bool.
Require Import Arith.
Open Scope nat_scope.
Lemma rank_right_height : forall h : heap, has_leftist_property h = true -> rank h = right_height h.
Proof.
intros.
induction h.
- auto.
- simpl.
simpl in H.
apply andb_true_iff in H.
destruct H.
apply Nat.eqb_eq in H0.
assumption.
Qed.
Definition prop_to_bool (P : Prop) {_ : Dec P} := (match (@dec P _) with | left _ => true | right _ => false end).
Definition goal (ex : (heap * heap * heap * heap * heap * nat * nat * nat)) : bool := match ex with | (gv2,h1_1,h1_2,h2_1,h2_2,n0,n1,n2) => (prop_to_bool (lia_heap_benchmarks.Definitions.has_leftist_property (lia_heap_benchmarks.Definitions.mergea n0 h1_1 gv2) = true)) end. 
Definition assump_Assumption_4 (ex : (heap * heap * heap * heap * heap * nat * nat * nat)) : bool := match ex with | (gv2,h1_1,h1_2,h2_1,h2_2,n0,n1,n2) => (prop_to_bool (lia_heap_benchmarks.Definitions.has_leftist_property (Heap n1 n2 h2_1 h2_2) = true)) end. 
Definition assump_Assumption_7 (ex : (heap * heap * heap * heap * heap * nat * nat * nat)) : bool := match ex with | (gv2,h1_1,h1_2,h2_1,h2_2,n0,n1,n2) => (prop_to_bool (lia_heap_benchmarks.Definitions.has_leftist_property h1_2 = true)) end. 
Definition assump_Assumption_6 (ex : (heap * heap * heap * heap * heap * nat * nat * nat)) : bool := match ex with | (gv2,h1_1,h1_2,h2_1,h2_2,n0,n1,n2) => (prop_to_bool (lia_heap_benchmarks.Definitions.has_leftist_property h1_1 = true)) end. 
Definition assump_GenVarEq_gv2 (ex : (heap * heap * heap * heap * heap * nat * nat * nat)) : bool := match ex with | (gv2,h1_1,h1_2,h2_1,h2_2,n0,n1,n2) => (prop_to_bool (lia_heap_benchmarks.Definitions.merge h1_2 (Heap n1 n2 h2_1 h2_2) = gv2)) end. 
Definition definitions_gv4 (ex : (heap * heap * heap * heap * nat * nat * nat)) : bool := match ex with | (h1_1,h1_2,h2_1,h2_2,n0,n1,n2) => (prop_to_bool (true = true)) end. 
Definition definitions_gv0 (ex : (heap * heap * heap * heap * nat * nat * nat)) : bool := match ex with | (h1_1,h1_2,h2_1,h2_2,n0,n1,n2) => (prop_to_bool (lia_heap_benchmarks.Definitions.has_leftist_property (lia_heap_benchmarks.Definitions.mergea n0 h1_1 (lia_heap_benchmarks.Definitions.merge h1_2 (Heap n1 n2 h2_1 h2_2))) = lia_heap_benchmarks.Definitions.has_leftist_property (lia_heap_benchmarks.Definitions.mergea n0 h1_1 (lia_heap_benchmarks.Definitions.merge h1_2 (Heap n1 n2 h2_1 h2_2))))) end. 
Definition definitions_gv2 (ex : (heap * heap * heap * heap * nat * nat * nat)) : bool := match ex with | (h1_1,h1_2,h2_1,h2_2,n0,n1,n2) => (prop_to_bool (lia_heap_benchmarks.Definitions.merge h1_2 (Heap n1 n2 h2_1 h2_2) = lia_heap_benchmarks.Definitions.merge h1_2 (Heap n1 n2 h2_1 h2_2))) end. 
Definition definitions_gv1 (ex : (heap * heap * heap * heap * nat * nat * nat)) : bool := match ex with | (h1_1,h1_2,h2_1,h2_2,n0,n1,n2) => (prop_to_bool (lia_heap_benchmarks.Definitions.mergea n0 h1_1 (lia_heap_benchmarks.Definitions.merge h1_2 (Heap n1 n2 h2_1 h2_2)) = lia_heap_benchmarks.Definitions.mergea n0 h1_1 (lia_heap_benchmarks.Definitions.merge h1_2 (Heap n1 n2 h2_1 h2_2)))) end. 
Definition definitions_gv3 (ex : (heap * heap * heap * heap * nat * nat * nat)) : bool := match ex with | (h1_1,h1_2,h2_1,h2_2,n0,n1,n2) => (prop_to_bool (Heap n1 n2 h2_1 h2_2 = Heap n1 n2 h2_1 h2_2)) end. 

Extraction "State_8.ml" goal assump_Assumption_4 assump_Assumption_7 assump_Assumption_6 assump_GenVarEq_gv2 definitions_gv4 definitions_gv0 definitions_gv2 definitions_gv1 definitions_gv3.