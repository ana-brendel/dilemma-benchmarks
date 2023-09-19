Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal57.

From lfind Require Import LFind.

From QuickChick Require Import QuickChick.
QCInclude "/home/anabrendel/lfind/benchmarks/clam/sources/_lfind_clam_lf_goal57_theorem0_38_lem/".
QCInclude ".".
Extract Constant defNumTests => "50".
(* Open Scope string_scope.
Fixpoint show_natural n :=
    match n with
    | Zero => "Zero"
    | Succ m => "Succ (" ++ show_natural m ++ ")"
    end.

Instance show_natural_instance : Show natural := {| show := show_natural |}. *)

Derive Show for natural.

Derive Arbitrary for natural.

Instance Dec_Eq_natural : Dec_Eq natural.
Proof. dec_eq. Qed.

Derive Show for lst.

Derive Arbitrary for lst.

Instance Dec_Eq_lst : Dec_Eq lst.
Proof. dec_eq. Qed.



(* Open Scope string_scope.
Fixpoint show_natural n :=
    match n with
    | Zero => "Zero"
    | Succ m => "Succ (" ++ show_natural m ++ ")"
    end.

Instance show_natural_instance : Show natural := {| show := show_natural |}. *)
(* 
Derive Show for natural.

Derive Arbitrary for natural.

Instance Dec_Eq_natural : Dec_Eq natural.
Proof. dec_eq. Qed. *)


Lemma conj3309: forall (lf6 : lst) (lf8 : natural) (x : natural) (v : natural) (w : natural) (lf11 : natural) (z : lst) (u : natural), @eq lst (drop u (drop v (drop lf8 lf6)))
  (drop u (drop lf11 (drop w (Cons x z)))).
Admitted.
QuickChick conj3309.