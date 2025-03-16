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

Lemma append_nil : forall x : lst, append x Nil = x.
Proof.
  intros.
  induction x.
  - reflexivity.
  - simpl. rewrite IHx. reflexivity.
Qed.

Lemma append_assoc : forall x y z : lst,
  append x (append y z) = append (append x y) z.
Proof.
  intros.
  induction x.
  - reflexivity.
  - simpl. rewrite IHx. reflexivity.
Qed.

Lemma rev_append: forall x y : lst, rev (append x y) = append (rev y) (rev x).
Proof.
  intros.
  induction x.
  - simpl. 
  findlemma. Admitted.
  
  (* rewrite append_nil. reflexivity.
  - simpl. rewrite IHx. rewrite append_assoc. reflexivity.
Qed. *)