From LFindToo Require Import LFindToo.
From QuickChick Require Import QuickChick.

Require Import Bool.
Require Import Arith.
Require Import Nat.

Inductive lst : Type :=
  | Nil : lst
  | Cons : nat -> lst -> lst.

Inductive tree : Type :=
| Leaf : tree
| Node : nat -> tree -> tree -> tree.

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

Fixpoint ltb (m n : nat) : bool :=
match (m, n) with
  | (_, 0) => false
  | (0, _) => true
  | (S m', S n') => ltb m' n'
end.

Fixpoint tinsert (t : tree) (i : nat) : tree :=
match t with
| Leaf => Node i Leaf Leaf
| Node d l r => if ltb d i then Node d l (tinsert r i) else Node d (tinsert l i) r
end.

Fixpoint tinsert_all (t : tree) (l : lst) : tree :=
match l with 
| Nil => t
| Cons n l' => tinsert (tinsert_all t l') n
end.

Fixpoint tsize (t : tree) : nat :=
match t with
| Leaf => 0
| Node d l r => 1 + (tsize l) + (tsize r)
end.

Fixpoint leb (n m : nat) : bool :=
match (n, m) with
  | (0, _) => true
  | (S n', S m') => leb n' m'
  | _ => false
end. 

Lemma insert_n_S : forall t n, (tsize (tinsert t n)) = S (tsize t).
Proof.
intros. induction t.
- reflexivity.
- simpl. destruct (ltb n0 n).
  + simpl. rewrite IHt2. rewrite <- plus_n_Sm. reflexivity.
  + simpl. rewrite IHt1. reflexivity.
Qed.


Theorem tree_insert_all : forall l t,  (tsize t)  <= (tsize (tinsert_all t l)).
Proof.
  intros. induction l.
  - simpl. auto with arith.
  - simpl. rewrite IHl.
  findlemma. Admitted.

    (* rewrite insert_n_S. auto.
Qed. *)
