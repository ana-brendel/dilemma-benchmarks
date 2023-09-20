From QuickChick Require Import QuickChick Tactics.
Import QcNotation.
Require Import Ndec.

Open Scope string_scope.
Fixpoint show_pos_ad p :=
    match p with
    | xH => "xH"
    | xO pp => "xO (" ++ show_pos pp ++ ")"
    | xI pp => "xI (" ++ show_pos pp ++ ")"
    end.

Definition show_N_ad n :=
    match n with
    | N0 => "N0"
    | Npos p => "Npos (" ++ show_pos p ++ ")"
    end.

Instance show_ad_ad : Show ad := {| show := show_N |}.

Derive Arbitrary for positive.
Derive Arbitrary for N.

Instance Dec_Eq_ad_ad : Dec_Eq ad.
Proof. dec_eq. Qed.