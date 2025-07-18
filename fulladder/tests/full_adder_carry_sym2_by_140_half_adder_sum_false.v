From Dilemma Require Import Dilemma.
From QuickChick Require Import QuickChick.

Require Import Bool.
Require Import Nat.
Require Import Arith.
Require Import Lia.

Definition half_adder_sum (b1 : bool) (b2: bool) : bool:=
match b1, b2 with
| true, true => false
| true, false => true
| false, true => true
| false, false => false
end.

Definition half_adder_carry (b1 : bool) (b2: bool) : bool:= 
match b1 with
| true => b2
| false => false
end.


Definition bool_to_nat (b : bool) :=
  match b with
  | true => 1
  | false => 0
  end.

Lemma half_adder_sum_sym:
  forall a b: bool, half_adder_sum a b = half_adder_sum b a.
Proof.
  induction a; induction b; auto.
Qed.

Lemma half_adder_carry_sym:
  forall a b: bool, half_adder_carry a b = half_adder_carry b a.
Proof.
simple  induction a; induction b; auto.
Qed.

Lemma half_adder_sum_false : forall a : bool, half_adder_sum a false = a.
Proof.
simple induction a; auto.
Qed.

Lemma half_adder_carry_false :
 forall a : bool, half_adder_carry a false = false.
Proof.
 simple induction a; auto.
Qed.

Lemma half_adder_sum_true : forall a : bool, half_adder_sum a true = negb a.
Proof.
auto.
Qed.

Lemma half_adder_carry_true : forall a : bool, half_adder_carry a true = a.
Proof.
simple induction a; auto.
Qed.

Theorem half_adder_ok :
 forall a b : bool,
 bool_to_nat (half_adder_sum a b) +
 (bool_to_nat (half_adder_carry a b) + bool_to_nat (half_adder_carry a b)) =
 bool_to_nat a + bool_to_nat b.
Proof.
simple induction a; simple induction b; auto.
Qed.


Definition full_adder_sum (a b c : bool) :=
  match true with
  | true => half_adder_sum (half_adder_sum a b) c
  | false => false
  end.

Definition full_adder_carry (a b c : bool) :=
  match half_adder_carry a b with
  | true => true
  | false => half_adder_carry (half_adder_sum a b) c
  end.

Lemma full_adder_sum_sym1 :
 forall a b c : bool, full_adder_sum a b c = full_adder_sum b a c.
Proof.
simple induction a; simple induction b; auto.
Qed.

Lemma full_adder_sum_sym2 :
 forall a b c : bool, full_adder_sum a b c = full_adder_sum a c b.
Proof.
simple induction b.
simple induction c.
auto.
unfold full_adder_sum in |- *.
rewrite half_adder_sum_false.
rewrite half_adder_sum_false.
auto.
unfold full_adder_sum in |- *. intro.
rewrite half_adder_sum_false.
rewrite half_adder_sum_false.
auto.
Qed.

Lemma full_adder_sum_false :
 forall a : bool, full_adder_sum a false false = a.
Proof.
 simple induction a; auto.
Qed.

Lemma full_adder_sum_true : forall a : bool, full_adder_sum a true true = a.
Proof.
simple induction a; auto.
Qed.

Lemma full_adder_carry_sym1 :
 forall a b c : bool, full_adder_carry a b c = full_adder_carry b a c.
Proof.
simple induction a; simple induction b; auto.
Qed.

Lemma full_adder_carry_sym2 :
 forall a b c : bool, full_adder_carry a b c = full_adder_carry a c b.
Proof.
simple induction b.
simple induction c.
auto.
unfold full_adder_carry in |- *.
dilemma. Admitted.

(* rewrite half_adder_sum_false.
rewrite half_adder_carry_false.
rewrite half_adder_carry_false.
simpl in |- *.
elim (half_adder_carry a true); auto.
intros.
unfold full_adder_carry in |- *.
rewrite half_adder_carry_false.
rewrite half_adder_sum_false.
rewrite half_adder_carry_false.
simpl in |- *.
elim (half_adder_carry a c); auto.
Qed. *)
