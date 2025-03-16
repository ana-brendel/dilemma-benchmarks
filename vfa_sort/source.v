
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
  (* HELPER LEMMA $ sort_perm_by_insert_perm $ *)
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
    rewrite nth_succ. apply H0. split. inversion H1. lia. inversion H1. simpl. lia.
Qed.

Lemma sorted_sortedd: forall al, sorted al -> sortedd al.
Proof.
  intros. induction H.
  - unfold sortedd. simpl. lia.
  - unfold sortedd. simpl. lia.
  -  (* HELPER LEMMA $ sorted_sortedd_by_sortedd_cons $ *)
  apply sortedd_cons. assumption. assumption.
Qed.

Lemma sortedd_sorted: forall al, sortedd al -> sorted al.
Proof.
  intros. induction al.
  - apply sorted_nil.
  - destruct al. apply sorted_1.
    unfold sortedd in H. apply sorted_cons. apply (H 0 1). simpl. lia. apply IHal. fold sortedd in H. unfold sortedd. 
    intros. apply (H (S i) (S j)). inversion H0. split. lia. simpl. simpl in H2. lia.
Qed.

Lemma Forall_nth: forall {A} (P: A -> Prop) d (al: list A), Forall P al <-> (forall i,  i < length al -> P (nth i al d)).
Proof.
  intros. split.
  - intros. generalize dependent i. induction H.
    + intros. simpl in H0. lia.
    + intros. destruct i.
      * simpl. assumption.
      * simpl. apply IHForall. simpl in H1. lia.
  - intros. induction al.
    + apply Forall_nil.
    + apply Forall_cons. apply (H 0). simpl. lia. apply IHal. intros. apply (H (S i)). simpl. lia.
Qed.
    

Lemma insert_sortedd: forall a l, sortedd l -> sortedd (insert a l).
Proof.
  intros. induction l.
  - simpl. unfold sortedd. intros. simpl in H0. lia.
  - simpl. bdestruct (a <=? a0).
    * (* HELPER LEMMA $ insert_sortedd_by_sortedd_cons_1 $ *)
    apply sortedd_cons. assumption. assumption.
    * remember (insert a l) as l0. destruct l0.
      + contradict Heql0. destruct l. simpl. discriminate. simpl. (bdestruct (a <=? n)). discriminate. discriminate.
      + (* HELPER LEMMA $ insert_sortedd_by_sortedd_cons_2 $ *)
      apply sortedd_cons. destruct l. simpl in Heql0. inversion Heql0. lia. simpl in Heql0. bdestruct (a <=? n0). 
      inversion Heql0. lia. inversion Heql0. unfold sortedd in H. apply (H 0 1). simpl. lia. apply IHl.
      unfold sortedd in H. unfold sortedd. intros. apply (H (S i) (S j)). simpl. lia.
Qed.  

Theorem sort_sortedd: forall l, sortedd (sort l).
Proof.
  induction l. simpl. unfold sortedd. intros. simpl in H. lia. simpl. 
  (* HELPER LEMMA $ sort_sortedd_by_insert_sortedd $ *)
  apply insert_sortedd. assumption.
Qed.