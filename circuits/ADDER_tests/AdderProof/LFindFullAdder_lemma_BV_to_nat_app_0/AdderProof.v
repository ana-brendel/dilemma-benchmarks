Load LFindLoad.
From lfind Require Import LFind.
Unset Printing Notations.
Set Printing Implicit.

From CircuitsCoqGym Require Import Adder. 

(****************************************************************)
Fixpoint length_BV (b: BV) : nat :=
   match b with
   | nil => 0
   | cons _ t => 1 + (length_BV t)
   end.

Lemma BV_to_nat_app2 : forall l n : (BV),
BV_to_nat (app l n) = BV_to_nat l + power2 (length_BV l) * BV_to_nat n.
Proof.
 intros. 
 lfind_debug.
 Admitted.

 (* apply BV_to_nat_app. auto.
Qed. *)
