Require Import String. Open Scope string.

Definition show_type_name_BV (T : Type) := 
  match T with
  | bool => "bool"
  end.

Instance show_BV {T} `{_ : Show T} : Show (list T) := 
{| show := 
     let fix aux l :=
       match l with
       | nil => "@nil (" ++ show_type_name_BV T ++ ")" 
       | cons x xs => "@cons (" ++ show_type_name_BV T ++ ") " ++ show x ++ " (" ++ aux xs ++ ")"
       end
      in aux
|}.
Derive Arbitrary for list.
Instance Dec_Eq_BV {T} `{_ : Dec_Eq T}  : Dec_Eq (list T).
Proof. dec_eq. Qed.