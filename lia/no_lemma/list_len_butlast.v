From LFindToo Require Import LFindToo.
From QuickChick Require Import QuickChick.

Require Import Bool.
Require Import Arith.

Inductive lst : Type :=
| Cons : nat -> lst -> lst
| Nil : lst.

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

Open Scope nat_scope.

Scheme Equality for lst.

Fixpoint append (append_arg0 : lst) (append_arg1 : lst) : lst
           := match append_arg0, append_arg1 with
              | Nil, x => x
              | Cons x y, z => cons x (append y z)
              end.

Fixpoint len (len_arg0 : lst) : nat
           := match len_arg0 with
              | Nil => 0
              | Cons x y => plus 1 (len y)
              end.

Fixpoint butlast (butlast_arg0 : lst) : lst
           := match butlast_arg0 with
              | Nil => Nil
              | Cons n x => if lst_beq x Nil then Nil else Cons n (butlast x)
              end.

Theorem theorem0 : forall (x : lst) (n : nat), eq (lst_beq (Cons n x) Nil) false.
Proof.
  reflexivity.
Qed.

Theorem theorem1 : forall (x : lst) (n : nat), eq (plus 1 (len (butlast (Cons n x)))) (len (Cons n x)).
Proof.
  intros. generalize dependent n.
  induction x.
  - simpl. f_equal. simpl in IHx. auto.
  - intros. simpl. reflexivity. 
Qed.
