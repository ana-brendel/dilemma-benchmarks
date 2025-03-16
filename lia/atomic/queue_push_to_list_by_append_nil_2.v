From LFindToo Require Import LFindToo.
From QuickChick Require Import QuickChick.

Require Import Bool.
Require Import Arith.
Require Import Nat.

Inductive lst : Type :=
  | Nil : lst
  | Cons : nat -> lst -> lst.

Inductive queue : Type :=
| Queue : lst -> lst -> queue.

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

(* ************************** [ QUEUE ] *************************** *)
Instance show_queue : Show queue := 
{| show := 
    let fix aux l :=
      match l with
      | Queue x y => "Queue (" ++ show x ++ ") (" ++ show y ++ ")"
      end
    in aux
|}.

Derive Arbitrary for queue.
Instance Dec_Eq_queue : Dec_Eq queue.
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

Fixpoint len (len_arg0 : lst) : nat
           := match len_arg0 with
              | Nil => 0
              | Cons x y => plus 1 (len y)
              end.

Definition qlen (qlen_arg0 : queue) : nat
           := let 'Queue x y := qlen_arg0 in
              plus (len x) (len y).

Fixpoint append (append_arg0 : lst) (append_arg1 : lst) : lst
           := match append_arg0, append_arg1 with
              | Nil, x => x
              | Cons x y, z => Cons x (append y z)
              end.

Fixpoint rev (rev_arg0 : lst) : lst
           := match rev_arg0 with
              | Nil => Nil
              | Cons x y => append (rev y) (Cons x Nil)
              end.

Definition amortizeQueue (amortizeQueue_arg0 : lst) (amortizeQueue_arg1 : lst) : queue
           := match amortizeQueue_arg0, amortizeQueue_arg1 with
              | x, y => if leb (len y) (len x) then Queue x y else Queue (append x (rev y)) Nil
              end.

Definition qpush (qpush_arg0 : queue) (qpush_arg1 : nat) : queue
           := match qpush_arg0, qpush_arg1 with
              | Queue x y, n => amortizeQueue x (Cons n y)
              end.

Definition queue_to_lst (queue_to_lst_arg0 : queue) : lst
           := let 'Queue x y := queue_to_lst_arg0 in
              append x (rev y).

Lemma append_nil : forall (l : lst), append l Nil = l.
Proof.
  intros.
  induction l.
  - reflexivity.
  - simpl. rewrite IHl. reflexivity.
Qed.

Theorem theorem0 : forall (q : queue) (n : nat), eq (append (queue_to_lst q) (Cons n Nil)) (queue_to_lst (qpush q n)).
Proof.
  intros.
  destruct q.
  induction l.
  - simpl. rewrite append_nil. reflexivity.
  - simpl. simpl in IHl. rewrite IHl. unfold amortizeQueue. simpl. destruct (len l) eqn:?.
    + simpl. destruct (len l0 <=? 0) eqn:?.
      * simpl. 
      findlemma. Admitted.
      
      (* rewrite append_nil. reflexivity.
      * simpl. reflexivity.
    + destruct (len l0 <=? n1) eqn:?.
      * simpl. apply Nat.leb_le in Heqb. apply le_S in Heqb. rewrite <- Nat.leb_le in Heqb. rewrite Heqb. simpl. reflexivity.
      * destruct (len l0 <=? S n1) eqn:?.
        -- simpl. rewrite append_nil. reflexivity.
        -- simpl. reflexivity.
Qed. *)
