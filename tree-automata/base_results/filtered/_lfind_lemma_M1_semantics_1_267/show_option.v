Open Scope string_scope.

Instance show_option {A} `{_ : Show A} : Show (option A) :=
{| show := 
    let fix aux l := 
        match l with
        | None => "None"
        | Some x => "Some ("++ show x ++")"
        end
    in aux 
|}.
Derive Arbitrary for option.
Instance Dec_Eq_option {A} `{_ : Dec_Eq A} : Dec_Eq (option A).
Proof. dec_eq. Qed.