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

Fixpoint exp (exp_arg0 : Nat) (exp_arg1 : Nat) : Nat
           := match exp_arg0, exp_arg1 with
              | n, zero => succ zero
              | n, succ m => mult (exp n m) n
              end.

Fixpoint qexp (qexp_arg0 : Nat) (qexp_arg1 : Nat) (qexp_arg2 : Nat) : Nat
           := match qexp_arg0, qexp_arg1, qexp_arg2 with
              | n, zero, m => m
              | n, succ m, p => qexp n m (mult p n)
              end.

Lemma mult_commut : forall (x y : Nat), mult x y = mult y x.
Proof. Admitted.

Lemma mult_assoc : forall (x y z : Nat), mult (mult x y) z = mult x (mult y z).
Proof. Admitted.

(* Theorem mult_qexp  *)
Theorem goal35_by_mult_commut : forall (x y z a : Nat), mult (qexp x y z) a = qexp x y (mult z a).
Proof.
  intros x y.
  induction y.
  - intros. simpl. rewrite IHy. rewrite mult_assoc. 
  findlemma. Admitted.
  (* rewrite (mult_commut x a). rewrite <- mult_assoc. reflexivity.
  - reflexivity.
Qed. *)
