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
  lfind_debug.
  Admitted.

  (* rewrite half_adder_sum_false.
  intro.
  auto.
Qed.  *)
