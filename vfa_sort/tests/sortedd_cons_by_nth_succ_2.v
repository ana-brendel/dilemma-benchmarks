From LFindToo Require Import LFindToo.


Require Import vfa_sort_benchmarks.Definitions.
From vfa_sort_benchmarks Require Import Decide.

(* These specify the libraries of functions that should be considered during synthesis that 
    are not defined within the above libraries. *)
Require Import Coq.Lists.List.
Require Import Coq.Sorting.Permutation. 

Require Import Lia.

Lemma insert_perm: forall x l, Permutation (x::l) (insert x l).
Proof.
  intros. induction l as [|a l'].
  - simpl. reflexivity.
  - simpl. bdestruct (x <=? a).
    + reflexivity.
    + simpl. rewrite perm_swap. apply perm_skip. assumption.
Qed.

Theorem sort_perm: forall l, Permutation l (sort l).
Proof.
  induction l.
  - simpl. reflexivity.
  - simpl. eapply perm_trans. apply perm_skip. apply IHl.
  apply insert_perm.
Qed.

Lemma insert_swap: forall x y l, x < y -> insert y (x::l) = x :: insert y l.
intros. induction l as [|a l'].
- simpl. bdestruct (y <=? x).
  + lia.
  + reflexivity.
- simpl. bdestruct (y <=? x). lia. reflexivity.
Qed.

Lemma insert_sorted: forall a l, sorted l -> sorted (insert a l).
Proof.
  intros. induction l as [|a' l'].
  - simpl. apply sorted_1.
  - simpl. bdestruct (a <=? a').
    + apply sorted_cons. assumption. assumption.
    + inversion H. simpl. apply sorted_cons. lia. apply sorted_1. simpl. bdestruct (a <=? y).
      * apply sorted_cons. lia. apply sorted_cons. lia. assumption.
      * apply sorted_cons. lia. 
      assert (sorted (insert a l')). apply IHl'. rewrite <- H2. assumption.
      rewrite <- H2 in H6. 
      (* HELPER LEMMA $ insert_sorted_by_insert_swap $ *)
      rewrite <- (insert_swap y a l). assumption. lia.
Qed.  

Theorem sort_sorted: forall l, sorted (sort l).
Proof.
  induction l.
  - simpl. apply sorted_nil.
  - simpl. 
  (* HELPER LEMMA $ sort_sorted_by_insert_sorted $ *)
  apply insert_sorted. assumption.
Qed.

Theorem insertion_sort_correct: is_a_sorting_algorithm sort.
Proof. split. 
  (* HELPER LEMMA $ insertion_sort_correct_by_sort_perm $ *)
  apply sort_perm. 
  (* HELPER LEMMA $ insertion_sort_correct_by_sort_sorted $ *)
  apply sort_sorted. 
Qed.

Lemma nth_succ: forall n x l, nth (S n) (x::l) 0 = nth n l 0.
Proof. intros. induction l. simpl. reflexivity. reflexivity. Qed.

Lemma sortedd_cons: forall x y l, x <= y -> (sortedd (y::l)) -> sortedd (x::y::l).
Proof.
  intros. 
  unfold sortedd in *. intros. simpl in H1. bdestruct (i =? 0). bdestruct (j =? 0).
    * rewrite H2. rewrite H3. reflexivity.
    * rewrite H2. simpl. destruct j. lia. destruct j. assumption.
     simpl in H. eapply Nat.le_trans. apply H.
    apply (H0 0 (S j)). simpl. lia.
    * destruct j. lia. 
    assert (exists i', i = S i'). destruct i. lia. exists i. reflexivity. 
    inversion H3. rewrite H4. 
    (* HELPER LEMMA $ sortedd_cons_by_nth_succ_1 $ *)
    rewrite nth_succ. 
    (* HELPER LEMMA $ sortedd_cons_by_nth_succ_2 $ *)
findlemma. Admitted.
(*
    rewrite nth_succ. apply H0. split. inversion H1. lia. inversion H1. simpl. lia.
Qed.
*)