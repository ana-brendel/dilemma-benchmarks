From LFindToo Require Import LFindToo.
From QuickChick Require Import QuickChick.

Require Import Bool.
Require Import Arith.
Require Import Nat.

Inductive heap : Type :=
| Hleaf : heap
| Heap : nat -> nat -> heap -> heap -> heap.

Open Scope string.

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

Open Scope nat_scope.

Fixpoint hsize (hsize_arg0 : heap) : nat := match hsize_arg0 with
   | Hleaf => 0
   | Heap k v l r => plus 1 (plus (hsize l) (hsize r))
   end.

Theorem heap_size_non_neg : forall (x : heap), ge (hsize x) 0.
Proof.
   intros.
   induction x.
   - simpl. auto.
   - simpl. 
   findlemma. Admitted.
   (* apply Nat.le_O_n.
Qed. *)
