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

Fixpoint half (half_arg0 : Nat) : Nat
           := match half_arg0 with
              | zero => zero
              | succ zero => zero
              | succ (succ n) => succ (half n)
              end.

Theorem plus_comm: forall (n m: Nat), plus n m = plus m n.
Proof. Admitted.

Theorem goal26_by_plus_comm : forall (x : Nat) (y : Nat), eq (half (plus x y)) (half (plus y x)).
Proof.
  intros.
  findlemma. Admitted.
  (* rewrite plus_comm.
  reflexivity.
Qed. *)
