Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal38.

From lfind Require Import LFind.
Require Import Arith.

Lemma lfind_state   (z : lst) (y : lst) (x : natural) : @eq bool (mem (lfappend y z) x) true.
Admitted.

From QuickChick Require Import QuickChick.
QCInclude "/home/anabrendel/lfind/benchmarks/clam/sources/_lfind_clam_lf_goal38_theorem0_54_goal36/".
QCInclude ".".
Extract Constant defNumTests => "50".
Derive Show for bool.

        Derive Arbitrary for bool.

        Instance Dec_Eq_bool : Dec_Eq bool.

        Proof. dec_eq. Qed.


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



Lemma candidate_10: forall (lf3 : bool) (y : lst) (x : natural), forall _ : @eq bool (mem y x) lf3, @eq bool (orb match x with | Succ _ => false | Zero => true end true) lf3.
Admitted.
QuickChick candidate_10.