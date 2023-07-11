Require Import string. Open Scope string.
Instance show_map {A} `{_ : Show A} : Show (Map A) :=
{| show := 
    let fix aux l := 
        match l with
        | M0 => "M0"
        | M1 a b => "M1 (" ++ show a ++ ")(" ++ show b ++ ")"
        | M2 x y => "M2 (" ++ aux x ++ ") (" ++ aux b ++ ")"
        end
    in aux 
|}.
Derive Arbitrary for map.
Instance Dec_Eq_map {A} `{_ : Dec_Eq A} : Dec_Eq (Map A).
Proof. dec_eq. Qed.