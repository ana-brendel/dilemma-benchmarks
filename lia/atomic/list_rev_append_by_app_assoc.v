From LFindToo Require Import LFindToo.
From QuickChick Require Import QuickChick.

Require Import Bool.
Require Import Arith.

Inductive lst : Type :=
| Cons : nat -> lst -> lst
| Nil : lst.

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

Open Scope nat_scope.

Scheme Equality for lst.

Fixpoint app (l : lst) (m : lst) : lst :=
match l with
  | Nil => m
  | Cons a l1 => Cons a (app l1 m)
end.

Fixpoint rev (l : lst) : lst :=
  match l with
  | Nil => Nil
  | Cons a l1 => app (rev l1) (Cons a Nil)
  end. 

Lemma app_nil : forall x : lst, app x Nil = x.
Proof.
  intros.
  induction x.
  - simpl. rewrite IHx. reflexivity.
  - reflexivity.
Qed.

Lemma app_assoc : forall x y z : lst, app x (app y z) = app (app x y) z.
Proof.
  intros.
  induction x.
  - simpl. rewrite IHx. reflexivity.
  - reflexivity.
Qed.

Theorem rev_append: forall x y : lst,
  (eq (rev (app x y)) (app (rev y) (rev x))).
Proof.
  intros.
  induction x.
  - simpl. rewrite IHx. 
  findlemma. Admitted.
  
  (* rewrite app_assoc. reflexivity.
  - simpl. rewrite app_nil. reflexivity.
Qed. *)
