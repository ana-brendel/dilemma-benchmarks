From QuickChick Require Import QuickChick Tactics.
Import QcNotation.

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

Instance show_map {A} `{_ : Show A} : Show (Map A) :=
{| show := 
    let fix aux l := 
        match l with
        | M0 _ => "M0"
        | M1 _ a b => "M1 (" ++ show a ++ ")(" ++ show b ++ ")"
        | M2 _ x y => "M2 (" ++ aux x ++ ") (" ++ aux y ++ ")"
        end
    in aux 
|}.

Derive Arbitrary for positive.
Derive Arbitrary for N.

Definition genM0 {A} := M0 A.
Definition genM1 {A} := M1 A.
Definition genM2 {A} := M2 A.

(* (Map A) in typeclass GenSized *)
Definition genMap {A} (g : G A) : nat -> G (Map A) := 
    let fix aux sz := 
        match sz with
        | O => ret genM0
        | S z => 
            freq [
                (0, ret genM0) ; 
                (1, liftM2 genM1 arbitrary g) ; 
                (sz, liftM2 genM2 (aux z) (aux z))
            ]
        end
    in aux.

(* (Map A) in typeclass Gen *)
Definition genMapBounded {A} (g : G A) : G (Map A) := sized (genMap g).

(* (Map A) in the Shrink typeclass*)
Definition mapShrink {A} (x : A) := (@nil A).

Instance genMapInstanceGen {A} `{_ : Gen A} : Gen (Map A) := {| arbitrary := genMapBounded arbitrary |}.
Instance genMapInstanceShrink {A} : Shrink (Map A) := {| shrink := mapShrink |}.

Set Nested Proofs Allowed.
Instance Dec_Eq_map {A} `{_ : Dec_Eq A} : Dec_Eq (Map A).
Proof. dec_eq. Qed.