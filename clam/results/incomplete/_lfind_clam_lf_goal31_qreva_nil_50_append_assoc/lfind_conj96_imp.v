Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal31.

From lfind Require Import LFind.

From QuickChick Require Import QuickChick.
QCInclude "/home/anabrendel/lfind/benchmarks/clam/sources/_lfind_clam_lf_goal31_qreva_nil_50_append_assoc/".
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


Lemma conj96_imp: forall (x : lst) (y : lst) (lf7 : lst) (n : natural), forall _ : forall y0 : lst, @eq lst (qreva x y0) (lfappend (qreva x lf7) y0),
@eq lst (lfappend (qreva x lf7) (Cons n y))
  (lfappend (lfappend (qreva x lf7) (Cons n lf7)) y).
Admitted.
QuickChick conj96_imp.