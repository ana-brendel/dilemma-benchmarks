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

Fixpoint genTerm sz : G (term) := 
    match sz with
    | O => liftM2 app arbitrary (ret tnil)
    | S z => 
        freq [
            (0, liftM2 app arbitrary (ret tnil)) ; 
            (sz, liftM2 app arbitrary (genTermList z))
        ]
    end
with genTermList zs : G (term_list) :=
    match zs with
    | O => ret tnil
    | S z => 
        freq [
            (0, ret tnil) ; 
            (1, liftM2 tcons (genTerm z) (ret tnil)) ; 
            (zs, liftM2 tcons (genTerm z) (genTermList z))
        ]
    end.

(* (Map A) in typeclass Gen *)
Definition genTermSized : G (term) := sized (genTerm).
Definition genTermListSized : G (term_list) := sized (genTermList).

(* (Map A) in the Shrink typeclass*)
Definition shrinkGen {A} (x : A) := (@nil A).

Instance genTermListInstanceGen : Gen (term_list) := {| arbitrary := genTermListSized |}.
Instance genTermListInstanceShrink : Shrink (term_list) := {| shrink := shrinkGen |}.

Instance Dec_Eq_term_list : Dec_Eq term_list.
Proof. dec_eq. Qed.