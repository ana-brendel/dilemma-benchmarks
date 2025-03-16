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

Fixpoint mult (mult_arg0 : Nat) (mult_arg1 : Nat) : Nat
           := match mult_arg0, mult_arg1 with
              | zero, n => zero
              | succ n, m => plus (mult n m) m
              end.

Fixpoint fac (fac_arg0 : Nat) : Nat
           := match fac_arg0 with
              | zero => succ zero
              | succ n => mult (fac n) n
              end.

Fixpoint qfac (qfac_arg0 : Nat) (qfac_arg1 : Nat) : Nat
           := match qfac_arg0, qfac_arg1 with
              | zero, n => n
              | succ n, m => qfac n (mult m n)
              end.

Lemma mult_commut : forall (x y : Nat), mult x y = mult y x.
Proof. Admitted.

Lemma mult_assoc : forall (x y z : Nat), mult (mult x y) z = mult x (mult y z).
Proof. Admitted.

Lemma goal33_by_mult_assoc : forall (x y : Nat), qfac x y = mult (qfac x (succ zero)) y.
Proof.
  intro.
  induction x.
  - intros. simpl. rewrite IHx. rewrite (IHx x). 
  findlemma. Admitted.
  (* rewrite mult_assoc. rewrite (mult_commut y x). reflexivity.
  - reflexivity.
Qed. *)
