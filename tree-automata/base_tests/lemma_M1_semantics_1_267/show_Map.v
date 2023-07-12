Open Scope string_scope.

Fixpoint show_pos p :=
    match p with
    | xH => "xH"
    | xO pp => "xO (" ++ show_pos pp ++ ")"
    | xI pp => "xI (" ++ show_pos pp ++ ")"
    end.

Fixpoint show_N n :=
    match n with
    | N0 => "N0"
    | Npos p => "Npos (" ++ show_pos p ++ ")"
    end.

Definition show_ad x := show_N x.

Instance show_map {A} `{_ : Show A} : Show (Map A) :=
{| show := 
    let fix aux l := 
        match l with
        | M0 _ => "M0"
        | M1 _ a b => "M1 (" ++ show_ad a ++ ")(" ++ show b ++ ")"
        | M2 _ x y => "M2 (" ++ aux x ++ ") (" ++ aux y ++ ")"
        end
    in aux 
|}.
(* Derive Arbitrary for Map. *)


Instance Dec_Eq_map {A} `{_ : Dec_Eq A} : Dec_Eq (Map A).
Proof. dec_eq. Qed.