From LFindToo Require Import LFindToo.
From QuickChick Require Import QuickChick.

Require Import Nat Arith.

Inductive Nat : Type := succ : Nat -> Nat |  zero : Nat.

Inductive Lst : Type := nil : Lst | cons : Nat -> Lst -> Lst.

Scheme Equality for Nat.

(* ************************** [ QuickChick Stuff ] *************************** *)
Derive Show for Nat.
Derive Arbitrary for Nat.
Instance Dec_Eq_Nat : Dec_Eq (Nat).
Proof. dec_eq. Qed.

Derive Show for Lst.
Derive Arbitrary for Lst.
Instance Dec_Eq_lst : Dec_Eq (Lst).
Proof. dec_eq. Qed.

Fixpoint less (less_arg0 : Nat) (less_arg1 : Nat) : bool
           := match less_arg0, less_arg1 with
              | x, zero => false
              | zero, succ x => true
              | succ x, succ y => less x y
              end.

Fixpoint count (count_arg0 : Nat) (count_arg1 : Lst) : Nat
           := match count_arg0, count_arg1 with
              | x, nil => zero
              | x, cons y z => if Nat_beq x y then succ (count x z) else count x z
              end.

Fixpoint insort (insort_arg0 : Nat) (insort_arg1 : Lst) : Lst
           := match insort_arg0, insort_arg1 with
              | i, nil => cons i nil
              | i, cons x y => if less i x then cons i (cons x y) else cons x (insort i y)
              end.

Fixpoint sort (sort_arg0 : Lst) : Lst
           := match sort_arg0 with
              | nil => nil
              | cons x y => insort x (sort y)
              end.

Lemma Nat_beq_refl : forall (n : Nat), Nat_beq n n = true.
Proof. Admitted.

Lemma Nat_beq_eq : forall (x y : Nat), Nat_beq x y = true -> x = y.
Proof. Admitted.

Lemma less_not_refl : forall (n : Nat), less n n = false.
Proof. Admitted.

Theorem goal70_by_Nat_beq_refl_1 : forall (x : Nat) (y : Lst), eq (count x (insort x y)) (succ (count x y)).
Proof.
  intros.
  induction y.
  - simpl. 
  findlemma. Admitted.
  (* rewrite Nat_beq_refl. reflexivity.
  - simpl. destruct (Nat_beq x n) eqn:?.
    + destruct (less x n) eqn:?.
      * apply Nat_beq_eq in Heqb. rewrite Heqb in Heqb0. rewrite less_not_refl in Heqb0. discriminate.
      * simpl. rewrite Heqb. rewrite IHy. reflexivity.
    + destruct (less x n) eqn:?.
      * simpl. rewrite Nat_beq_refl. rewrite Heqb. reflexivity.
      * simpl. rewrite Heqb. assumption.
Qed. *)

