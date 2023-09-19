Require Import String. Open Scope string.

Definition show_type_name (T : Type) := 
  match T with
  | bool => "bool"
  end.

Instance show_list {T} `{_ : Show T} : Show (list T) := 
{| show := 
     let fix aux l :=
       match l with
       | nil => "@nil (" ++ show_type_name T ++ ")" 
       | cons x xs => "@cons (" ++ show_type_name T ++ ") " ++ show x ++ " (" ++ aux xs ++ ")"
       end
      in aux
|}.
Derive Arbitrary for list.
Instance Dec_Eq_list {T} `{_ : Dec_Eq T}  : Dec_Eq (list T).
Proof. dec_eq. Qed.