From QuickChick Require Import QuickChick Tactics.
Import QcNotation.

(* Inductive term : Set :=
    app : ad -> term_list -> term
with term_list : Set :=
  | tnil : term_list
  | tcons : term -> term_list -> term_list. *)

Open Scope string_scope.
Fixpoint show_pos p :=
    match p with
    | xH => "xH"
    | xO pp => "xO (" ++ show_pos pp ++ ")"
    | xI pp => "xI (" ++ show_pos pp ++ ")"
    end.

Definition show_N n :=
    match n with
    | N0 => "N0"
    | Npos p => "Npos (" ++ show_pos p ++ ")"
    end.

Instance show_ad : Show ad := {| show := show_N |}.

Fixpoint show_term_fix t := 
    match t with
    | app a tl => "app (" ++ show a ++ ") (" ++ show_term_list_fix tl ++ ")"
    end 
with show_term_list_fix tl :=
    match tl with
    | tnil => "tnil"
    | tcons t l =>"tcons (" ++ show_term_fix t ++ ") (" ++ show_term_list_fix l ++ ")"
    end.

Instance show_term : Show (term) := {| show := show_term_fix |}.
Instance show_term_list : Show (term_list) := {| show := show_term_list_fix |}.

Derive Arbitrary for positive.
Derive Arbitrary for N.

Derive Arbitrary for term.

Instance Dec_Eq_term : Dec_Eq term.
Proof. dec_eq. Qed.