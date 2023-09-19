Load LFindLoad.
From lfind Require Import LFind.
Unset Printing Notations.
Set Printing Implicit.

From CircuitsCoqGym Require Import Adder. 

(****************************************************************)

Lemma BV_full_adder_nil_true_ok :
forall v : BV, BV_to_nat (BV_full_adder v nilbv true) = S (BV_to_nat v).
Proof.
   unfold nilbv in |- *. simple induction v; auto with arith. unfold BV_full_adder in |- *. intros.
   rewrite BV_full_adder_sum_eq3. 
   lfind_debug.
   Admitted.
   
   (* rewrite BV_full_adder_carry_eq3.
   rewrite (app_eq2 bool). rewrite half_adder_carry_true.
   simpl in |- *. elim a. unfold appbv in H. rewrite H. simpl in |- *. auto with arith.
   rewrite BV_full_adder_sum_v_nil_false.
   rewrite BV_full_adder_carry_v_nil_false. rewrite BV_to_nat_app2.
   simpl in |- *. elim mult_n_O. elim plus_n_O. trivial with arith.
Qed. *)
