From LFindToo Require Import LFindToo.

(** * Trie:  Number Representations and Efficient Lookup Tables *)

Require Import vfa_trie_benchmarks.Definitions.
From vfa_trie_benchmarks Require Import Decide.

(* These specify the libraries of functions that should be considered during synthesis that 
    are not defined within the above libraries. *)
Require Import Coq.Lists.List.
Require Import Coq.Sorting.Permutation. 

(* ################################################################# *)

Lemma succ_correct: forall p, positive2nat (succ p) = S (positive2nat p).
Proof. induction p. simpl. lia. simpl. reflexivity. simpl. reflexivity. Qed.

Lemma addc_correct: forall (c: bool) (p q: positive), positive2nat (addc c p q) = (if c then 1 else 0) + positive2nat p + positive2nat q.
Proof.
  intros c p. generalize dependent c. induction p. intros. simpl. destruct c. destruct q.
  simpl. specialize (IHp true q). simpl in IHp. lia.
  simpl. specialize (IHp true q). simpl in IHp. lia.
  simpl. 
  (* HELPER LEMMA $ addc_correct_by_succ_correct_1 $ *)
  rewrite succ_correct. lia.
  destruct q. simpl. specialize (IHp true q). simpl in IHp. lia.
  simpl. specialize (IHp false q). simpl in IHp. lia.
  simpl. 
  (* HELPER LEMMA $ addc_correct_by_succ_correct_2 $ *)
  rewrite succ_correct. lia.
  intros. simpl. destruct c. destruct q.
  simpl. specialize (IHp true q). simpl in IHp. lia.
  simpl. specialize (IHp false q). simpl in IHp. lia.
  simpl. 
  (* HELPER LEMMA $ addc_correct_by_succ_correct_3 $ *)
  rewrite succ_correct. lia.
  destruct q. simpl. specialize (IHp false q). simpl in IHp. lia.
  simpl. specialize (IHp false q). simpl in IHp. lia.
  simpl. lia.
  intros. simpl. destruct c. destruct q.
  simpl.  
  (* HELPER LEMMA $ addc_correct_by_succ_correct_4 $ *)
findlemma. Admitted.
(*
  rewrite succ_correct. lia.
  simpl. 
  (* HELPER LEMMA $ addc_correct_by_succ_correct_5 $ *)
  rewrite succ_correct. lia.
  simpl. reflexivity.
  destruct q. simpl. 
  (* HELPER LEMMA $ addc_correct_by_succ_correct_6 $ *)
  rewrite succ_correct. lia.
  simpl. lia. simpl. reflexivity.
Qed.
*)