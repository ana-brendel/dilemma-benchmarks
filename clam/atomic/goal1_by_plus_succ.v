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

Fixpoint double (double_arg0 : Nat) : Nat
           := match double_arg0 with
              | zero => zero
              | succ n => succ (succ (double n))
              end.

Lemma plus_succ: forall m n, succ (plus m n) = plus m (succ n).
Proof. Admitted.

Theorem goal1_by_plus_succ : forall (x : Nat), eq (double x) (plus x x).
Proof.
   induction x.
   - simpl. f_equal. rewrite IHx. 
   findlemma. Admitted.
   
   (* apply plus_succ.
   - reflexivity.
Qed. *)
