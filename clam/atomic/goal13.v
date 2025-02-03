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


Lemma lem: forall m n, plus (succ m) n = plus m (succ n).
Proof.
intros. simpl. induction m.
  - simpl. rewrite IHm. reflexivity.
  - reflexivity.
Qed.

Theorem theorem0 : forall (x : Nat), eq (half (plus x x)) x.
Proof.
induction x.
  - simpl. destruct x.
    * simpl. rewrite <- lem. rewrite IHx. reflexivity.
    * reflexivity.
  - reflexivity.
Qed.


