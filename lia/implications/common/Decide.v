From QuickChick Require Import QuickChick.
From lia_heap_benchmarks Require Import Definitions.

Require Import String. Open Scope string.

(* ************************** [ NAT ] *************************** *)
Derive Show for nat.
Derive Arbitrary for nat.
Instance Dec_Eq_nat : Dec_Eq nat.
Proof. dec_eq. Qed.

(* ************************** [ BOOL ] *************************** *)
Derive Show for bool.
Derive Arbitrary for bool.
Instance Dec_Eq_bool : Dec_Eq bool.
Proof. dec_eq. Qed.

(* ************************** [ LST ] *************************** *)
Instance show_lst : Show lst := 
{| show := 
    let fix aux l :=
      match l with
      | Nil => "Nil"
      | Cons x y => "Cons (" ++ show x ++ ") (" ++ aux y ++ ")"
      end
    in aux
|}.

Derive Arbitrary for lst.
Instance Dec_Eq_lst : Dec_Eq lst.
Proof. dec_eq. Qed.

(* ************************** [ HEAP ] *************************** *)
Instance show_heap : Show heap := 
{| show := 
    let fix aux l :=
      match l with
      | Hleaf => "Hleaf"
      | Heap n1 n2 h1 h2 => "Heap (" ++ show n1 ++ ") (" ++ show n2 ++ ") (" ++ aux h1 ++ ") (" ++ aux h2 ++ ")"
      end
    in aux
|}.

Derive Arbitrary for heap.
Instance Dec_Eq_heap : Dec_Eq heap.
Proof. dec_eq. Qed.

(* ************************** [ OPTION ] *************************** *)
Instance show_option {T} `{_ : Show T} : Show (option T) := 
{| show := 
    let fix aux l :=
      match l with
      | None => "None"
      | Some x => "Some (" ++ show x ++ ")"
      end
    in aux
|}.

Close Scope string.