From LFindToo Require Import LFindToo.
From QuickChick Require Import QuickChick.

Require Import Bool.
Require Import Arith.
Require Import Nat.

Inductive tree : Type :=
| Leaf : tree
| Node : nat -> tree -> tree -> tree.

Open Scope string.

(* ************************** [ TREE ] *************************** *)
Instance show_tree : Show tree := 
{| show := 
    let fix aux l :=
      match l with
      | Leaf => "Leaf"
      | Node x r l => "Node (" ++ show x ++ ") (" ++ aux l ++ ") (" ++ aux r ++ ")"
      end
    in aux
|}.

Derive Arbitrary for tree.
Instance Dec_Eq_tree : Dec_Eq tree.
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

Fixpoint tinsert (tinsert_arg0 : tree) (tinsert_arg1 : nat) : tree := 
   match tinsert_arg0, tinsert_arg1 with
      | Leaf, i => Node i Leaf Leaf
      | Node d l r, i => if ltb d i then Node d l (tinsert r i) else Node d (tinsert l i) r
      end.

Fixpoint tsize (tsize_arg0 : tree) : nat := 
   match tsize_arg0 with
   | Leaf => 0
   | Node x l r => plus 1 (plus (tsize l) (tsize r))
   end.

Theorem tree_insert_size : forall (t : tree) (n : nat), eq (tsize (tinsert t n)) (plus 1 (tsize t)).
Proof.
   intros.
   induction t.
   - reflexivity.
   -  simpl. destruct (ltb n0 n).
   + simpl. rewrite IHt2. f_equal. 
   findlemma. Admitted.
   
   (* rewrite <- plus_n_Sm. 
   reflexivity.
  + simpl. rewrite IHt1. reflexivity.
Qed. *)

