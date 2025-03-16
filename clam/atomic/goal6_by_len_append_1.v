From LFindToo Require Import LFindToo.
From QuickChick Require Import QuickChick.

Require Import Nat Arith.

Inductive Nat : Type := succ : Nat -> Nat |  zero : Nat.

Inductive Lst : Type := nil : Lst | cons : Nat -> Lst -> Lst.

(* ************************** [ QuickChick Stuff ] *************************** *)
Derive Show for Nat.
Derive Arbitrary for Nat.
Instance Dec_Eq_Nat : Dec_Eq (Nat).
Proof. dec_eq. Qed.

Derive Show for Lst.
Derive Arbitrary for Lst.
Instance Dec_Eq_lst : Dec_Eq (Lst).
Proof. dec_eq. Qed.

Fixpoint plus (plus_arg0 : Nat) (plus_arg1 : Nat) : Nat
           := match plus_arg0, plus_arg1 with
              | zero, n => n
              | succ n, m => succ (plus n m)
              end.

Fixpoint append (append_arg0 : Lst) (append_arg1 : Lst) : Lst
           := match append_arg0, append_arg1 with
              | nil, x => x
              | cons x y, z => cons x (append y z)
              end.

Fixpoint len (len_arg0 : Lst) : Nat
           := match len_arg0 with
              | nil => zero
              | cons x y => succ (len y)
              end.

Fixpoint rev (rev_arg0 : Lst) : Lst
           := match rev_arg0 with
              | nil => nil
              | cons x y => append (rev y) (cons x nil)
              end.

Theorem len_append: forall (l1 l2: Lst), len (append l1 l2) = plus (len l1) (len l2).
Proof.
  induction l1; induction l2; simpl.
  { reflexivity. }
  { reflexivity. }
  { f_equal. rewrite IHl1. simpl. reflexivity. }
  { f_equal. rewrite IHl1. simpl. reflexivity. }
Qed.

Theorem plus_comm: forall (n m: Nat), plus n m = plus m n.
Proof. Admitted.

Theorem goal6_by_len_append_1 : forall (l: Lst), len (rev l) = len l.
Proof.
  induction l; simpl.
  reflexivity.
  findlemma. Admitted.

  (* rewrite len_append. rewrite plus_comm. simpl. f_equal. assumption.
Qed. *)

(* Theorem theorem0 : forall (x : Lst) (y : Lst), eq (len (rev (append x y))) (plus (len x) (len y)).
Proof.
  intros.
  rewrite len_rev.
  apply len_append.
Qed. *)
