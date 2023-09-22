Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal7.

From lfind Require Import LFind.

From QuickChick Require Import QuickChick.
QCInclude "/home/anabrendel/lfind/benchmarks/clam/sources/_lfind_clam_lf_goal7_theorem0_54_plus_comm/".
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


Lemma conj504_imp: forall (lf9 : natural) (x : lst) (y : lst) (n : natural) (n0 : natural), forall
  _ : forall y0 : lst, @eq natural (len (qreva x y0)) (plus lf9 (len y0)),
@eq natural (len (qreva x (Cons n (Cons n0 y))))
  (Succ (plus lf9 (Succ (len y)))).
Admitted.
QuickChick conj504_imp.