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

Fixpoint append (l1 : lst) (l2 : lst) : lst :=
  match l1 with
  | Nil => l2
  | Cons x y => Cons x (append y l2)
  end.

Fixpoint rev (l : lst) : lst :=
  match l with
  | Nil => Nil
  | Cons x y => append (rev y) (Cons x Nil)
  end.

Theorem append_assoc : forall x y z : lst, append (append x y) z = append x (append y z).
Proof.
  intros.
  induction x.
  - reflexivity.
  - simpl. rewrite IHx. reflexivity.
Qed.

Theorem rev_append_cons_aux : forall (l1 l2 : lst) (x : nat), rev (append (rev l1) (Cons x l2)) = append (rev l2) (Cons x l1).
Proof.
  intro.
  induction l1.
  - reflexivity.
  - intros. simpl. rewrite append_assoc. simpl. rewrite IHl1. simpl. 
    rewrite append_assoc. reflexivity.
Qed.

Theorem rev_append_cons : forall (l : lst) (x : nat), rev (append (rev l) (Cons x Nil)) = Cons x l.
Proof.
  intros.
  induction l.
  - reflexivity.
  - simpl. rewrite append_assoc. simpl. 
  findlemma. Admitted.
  (* rewrite rev_append_cons_aux. reflexivity.
Qed. *)