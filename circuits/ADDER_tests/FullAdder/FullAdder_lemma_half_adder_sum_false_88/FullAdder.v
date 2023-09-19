Load LFindLoad.
From lfind Require Import LFind.
Unset Printing Notations.
Set Printing Implicit.

From CircuitsCoqGym Require Import HalfAdder. 

(****************************************************************)

Definition full_adder_sum (a b c : bool) := half_adder_sum (half_adder_sum a b) c.

Definition full_adder_carry (a b c : bool) := half_adder_carry a b || half_adder_carry (half_adder_sum a b) c.

(****************************************************************)

Lemma full_adder_sum_sym1 : forall a b c : bool, full_adder_sum a b c = full_adder_sum b a c.
Proof.
  simple induction a; simple induction b; auto.
Qed. 

Lemma full_adder_sum_sym2 : forall a b c : bool, full_adder_sum a b c = full_adder_sum a c b.
Proof.
  simple induction b.
  simple induction c.
  auto.
  unfold full_adder_sum in |- *.
  rewrite half_adder_sum_false.
  rewrite half_adder_sum_false.
  auto.
  unfold full_adder_sum in |- *.
  rewrite half_adder_sum_false.
  intro.
  auto.
Qed. 

Lemma full_adder_sum_false : forall a : bool, full_adder_sum a false false = a.
Proof.
  simple induction a; auto.
Qed. 

Lemma full_adder_sum_true : forall a : bool, full_adder_sum a true true = a.
Proof.
  simple induction a; auto.
Qed. 

Lemma full_adder_carry_sym1 : forall a b c : bool, full_adder_carry a b c = full_adder_carry b a c.
Proof.
  simple induction a; simple induction b; auto.
Qed.

Lemma full_adder_carry_sym2 : forall a b c : bool, full_adder_carry a b c = full_adder_carry a c b.
Proof.
  simple induction b.
  simple induction c.
  auto.
  unfold full_adder_carry in |- *.
  lfind_debug.
  Admitted.

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
Qed.  *)
