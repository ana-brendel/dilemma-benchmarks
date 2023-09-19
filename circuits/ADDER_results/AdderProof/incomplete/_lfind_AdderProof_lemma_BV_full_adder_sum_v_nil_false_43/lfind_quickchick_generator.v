Load LFindLoad.
Load LFindLoad.
From Circuits Require Import AdderProof.

From lfind Require Import LFind.
From CircuitsCoqGym Require Import Adder. 

Lemma lfind_state   (l : list bool) : @eq nat
  (Nat.add (bool_to_nat (half_adder_sum false true))
     (Nat.add
        (BV_to_nat
           (@app bool (BV_full_adder_sum l (@nil bool) false)
              (consbv (BV_full_adder_carry l (@nil bool) false) nilbv)))
        (BV_to_nat
           (@app bool (BV_full_adder_sum l (@nil bool) false)
              (consbv (BV_full_adder_carry l (@nil bool) false) nilbv)))))
  (S (Nat.add (bool_to_nat false) (Nat.add (BV_to_nat l) (BV_to_nat l)))).
Admitted.

From QuickChick Require Import QuickChick.
QCInclude "/home/anabrendel/lfind/benchmarks/circuits/ADDER_tests/AdderProof/_lfind_AdderProof_lemma_BV_full_adder_sum_v_nil_false_43/".
QCInclude ".".
Extract Constant defNumTests => "50".
Derive Show for nat.

        Derive Arbitrary for nat.

        Instance Dec_Eq_nat : Dec_Eq nat.

        Proof. dec_eq. Qed.


Derive Show for bool.

        Derive Arbitrary for bool.

        Instance Dec_Eq_bool : Dec_Eq bool.

        Proof. dec_eq. Qed.


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


Open Scope string_scope.

Parameter print : list bool -> string -> list bool.
Extract Constant print => "Extract.print".
Definition collect_data (l : list bool) :=
 let lfind_var := "l:" ++ "(" ++ show l ++ ")"
 in let lfind_v := print l lfind_var
 in lfind_state  lfind_v.
QuickChick collect_data.
Success.