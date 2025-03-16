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


Lemma drop_succ: forall n1 n2 l, drop (succ n1) (drop n2 l) = drop n1 (drop (succ n2) l).
Proof. Admitted.

Theorem goal57_by_drop_succ_1 : forall (u : Nat) (v : Nat) (w : Nat) (x : Nat) (y : Nat) (z : Lst),
  eq (drop (succ u) (drop v (drop (succ w) (cons x (cons y z))))) (drop (succ u) (drop v (drop w (cons x z)))).
Proof.
intros. 
findlemma. Admitted.
(* rewrite drop_succ. rewrite drop_succ. rewrite drop_succ. rewrite drop_succ. reflexivity.
Qed. *)


