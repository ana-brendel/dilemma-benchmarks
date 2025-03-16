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
  

Theorem add_correct: forall (p q: positive), positive2nat (add p q) = positive2nat p + positive2nat q.
Proof. 
  intros. unfold add. 
  (* HELPER LEMMA $ add_correct_by_positive2nat_pos_1 $ *)
  apply addc_correct. 
Qed.

Lemma positive2nat_pos: forall p, positive2nat p > 0.
Proof. intros. induction p; simpl; lia. Qed.

Theorem compare_correct:
 forall x y,
  match compare x y with
  | Lt => positive2nat x < positive2nat y
  | Eq => positive2nat x = positive2nat y
  | Gt => positive2nat x > positive2nat y
 end.
Proof.
  induction x; destruct y; simpl.
  specialize (IHx y). destruct (compare x y); lia.
  specialize (IHx y). destruct (compare x y); lia.
  assert (positive2nat x > 0). 
  (* HELPER LEMMA $ compare_correct_by_positive2nat_pos_1 $ *)
  apply positive2nat_pos. lia.
  specialize (IHx y). destruct (compare x y); lia.
  specialize (IHx y). destruct (compare x y); lia.
  assert (positive2nat x > 0). 
  (* HELPER LEMMA $ compare_correct_by_positive2nat_pos_2 $ *)
  apply positive2nat_pos. lia.
  assert (positive2nat y > 0). 
  (* HELPER LEMMA $ compare_correct_by_positive2nat_pos_3 $ *)
  apply positive2nat_pos. lia.
  assert (positive2nat y > 0). 
  (* HELPER LEMMA $ compare_correct_by_positive2nat_pos_4 $ *)
  apply positive2nat_pos. lia.
  reflexivity.
Qed.

(* ================================================================= *)
(** ** Lemmas About the Relation Between [lookup] and [insert] *)

Lemma look_leaf: forall a j, look a j Leaf = a.
Proof. intros. destruct j; reflexivity. Qed.

Lemma look_ins_same: forall a k v t, look a k (ins a k v t) = v.
Proof.
  induction k. intros. simpl. destruct t. apply (IHk v Leaf). apply (IHk v t2).
  intros. simpl. destruct t. apply (IHk v Leaf). apply (IHk v t1).
  intros. simpl. destruct t. reflexivity. reflexivity.
Qed.


Lemma look_ins_other: forall a j k v t, j <> k -> look a j (ins a k v t) = look a j t.
Proof.
  induction j; destruct k; intros; simpl; auto.
  - destruct t. rewrite (IHj k v Leaf). 
  (* HELPER LEMMA $ look_ins_other_by_look_leaf_1 $ *)
  apply look_leaf. unfold not. intros. rewrite H0 in H. contradiction. 
    rewrite (IHj k v t2). reflexivity. unfold not. intros. rewrite H0 in H. contradiction. 
  - destruct t. 
  (* HELPER LEMMA $ look_ins_other_by_look_leaf_2 $ *)
  apply look_leaf. reflexivity.
  - destruct t. 
  (* HELPER LEMMA $ look_ins_other_by_look_leaf_3 $ *)
  apply look_leaf. reflexivity.
  - destruct t. 
  (* HELPER LEMMA $ look_ins_other_by_look_leaf_4 $ *)
  apply look_leaf. reflexivity.
  - destruct t. rewrite (IHj k v Leaf). 
  (* HELPER LEMMA $ look_ins_other_by_look_leaf_5 $ *)
findlemma. Admitted.
(*
  apply look_leaf. unfold not. intros. rewrite H0 in H. contradiction. 
    rewrite (IHj k v t1). reflexivity. unfold not. intros. rewrite H0 in H. contradiction. 
  - destruct t. 
  (* HELPER LEMMA $ look_ins_other_by_look_leaf_6 $ *)
  apply look_leaf. reflexivity.
  - destruct t. reflexivity. reflexivity.
  - destruct t. reflexivity. reflexivity.
  - destruct t. contradict H. reflexivity. contradict H. reflexivity.
Qed. 
*)