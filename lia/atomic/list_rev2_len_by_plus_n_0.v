From LFindToo Require Import LFindToo.
From QuickChick Require Import QuickChick.

Require Import Bool.
Require Import Arith.
Require Import Nat.

Inductive lst : Type :=
  | Nil : lst
  | Cons : nat -> lst -> lst.

Open Scope string.

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

Fixpoint len (l : lst) : nat :=
match l with
  | Nil => 0
  | Cons a l1 => 1 + (len l1)
end.

Fixpoint rev (l1 l2: lst): lst :=
  match l1 with
  | Nil => l2
  | Cons x l1' => rev l1' (Cons x l2)
  end. 

Lemma list_rev2_len_lem: forall l1 l2, len (rev l1 l2) = (len l1) + (len l2).
Proof.
  induction l1.
  - simpl. reflexivity.
  - simpl. intros. rewrite IHl1. simpl. rewrite <- plus_n_Sm.
    reflexivity.
Qed.


Theorem list_rev2_len: forall l: lst, len (rev l Nil) = len l.
Proof.
  induction l.
  - simpl. reflexivity.
  - rewrite list_rev2_len_lem. simpl. 
  findlemma. Admitted.
  
  (* rewrite <- plus_n_O. reflexivity.
Qed. *)
