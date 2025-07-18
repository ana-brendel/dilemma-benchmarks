From Dilemma Require Import Dilemma.
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

Fixpoint drop (drop_arg0 : Nat) (drop_arg1 : Lst) : Lst
           := match drop_arg0, drop_arg1 with
              | x, nil => nil
              | zero, x => x
              | succ x, cons y z => drop x z
              end.

Theorem drop_nil: forall (x: Nat), drop x nil = nil.
Proof. induction x ; simpl; reflexivity. Qed.

Theorem drop_cons: forall (x n: Nat) (l: Lst), drop (succ x) (cons n l) = drop x l.
Proof. induction l; induction x; simpl; reflexivity. Qed.

(* Previous benchmark *)
Theorem drop_cons_assoc: forall (x1 x2 x3: Nat) (l: Lst), drop x1 (drop x2 (cons x3 l)) = drop x2 (drop x1 (cons x3 l)).
Proof. Admitted.

(* Previous benchmark *)
Theorem drop_assoc : forall (x : Nat) (y : Nat) (z : Lst), eq (drop x (drop y z)) (drop y (drop x z)).
Proof. Admitted.

Theorem goal9_by_drop_assoc : forall (x : Nat) (y : Nat) (w : Nat) (z : Lst), eq (drop w (drop x (drop y z))) (drop y (drop x (drop w z))).
Proof.
  intros.
  rewrite (drop_assoc w x).
  rewrite (drop_assoc w y).
  dilemma. Admitted.
  (* rewrite (drop_assoc x y).
  reflexivity.
Qed. *)
