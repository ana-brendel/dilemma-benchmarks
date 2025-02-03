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

Fixpoint drop (drop_arg0 : Nat) (drop_arg1 : Lst) : Lst
           := match drop_arg0, drop_arg1 with
              | x, nil => nil
              | zero, x => x
              | succ x, cons y z => drop x z
              end.

Theorem drop_nil: forall (x: Nat), drop x nil = nil.
Proof.
  induction x ; simpl; reflexivity.
Qed.

Theorem drop_cons: forall (x n: Nat) (l: Lst), drop (succ x) (cons n l) = drop x l.
  induction l; induction x; simpl; reflexivity.
Qed.

Theorem drop_cons_assoc: forall (x1 x2 x3: Nat) (l: Lst),
    drop x1 (drop x2 (cons x3 l)) = drop x2 (drop x1 (cons x3 l)).
Proof.
  induction x1; induction x2; try (simpl; reflexivity).
  { induction l.
    { rewrite 2 drop_cons. rewrite <- IHx1.
      rewrite IHx2. rewrite 2 drop_cons.
      induction l.
      { rewrite IHx1. reflexivity. }
      { rewrite 3 drop_nil. reflexivity. }
    }
    { simpl. rewrite 2 drop_nil. reflexivity. }
  }
  { intros. simpl. destruct (drop x1 l); reflexivity. }
  { intros. simpl. destruct (drop x2 l); reflexivity. }
Qed.

Theorem theorem0 : forall (x : Nat) (y : Nat) (z : Lst), eq (drop x (drop y z)) (drop y (drop x z)).
Proof.
  induction z.
  { rewrite 2 drop_cons_assoc. reflexivity. }
  { rewrite 3 drop_nil. reflexivity. }
Qed.
