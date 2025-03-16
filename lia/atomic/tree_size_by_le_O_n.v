From LFindToo Require Import LFindToo.
From QuickChick Require Import QuickChick.

Require Import Nat.
Require Import Arith.

Inductive Tree : Type := node : nat -> Tree -> Tree -> Tree |  leaf : Tree.

Open Scope string.

(* ************************** [ TREE ] *************************** *)
Instance show_Tree : Show Tree := 
{| show := 
    let fix aux l :=
      match l with
      | leaf => "leaf"
      | node v l r => "node (" ++ show v ++ ") (" ++ aux l ++ ") (" ++ aux r ++ ")"
      end
    in aux
|}.

Derive Arbitrary for Tree.
Instance Dec_Eq_Tree : Dec_Eq Tree.
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

Fixpoint tsize (tsize_arg0 : Tree) : nat
           := match tsize_arg0 with
              | leaf => 0
              | node x l r => plus 1 (plus (tsize l) (tsize r))
              end.

Theorem tree_size_non_neg : forall (x : Tree), ge (tsize x) 0.
Proof.
   intros.
   induction x.
   - simpl. 
   findlemma. Admitted.
   
   (* apply Nat.le_O_n.
   - simpl. auto.
Qed. *)

