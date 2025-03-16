(** * BagPerm:  Insertion Sort With Bags *)

Require Import vfa_bagperm_benchmarks.Definitions.
From vfa_bagperm_benchmarks Require Import Decide.

Require Import Lia.

Lemma bag_eqv_refl : forall b, bag_eqv b b.
Proof. unfold bag_eqv. intros. reflexivity. Qed.

Lemma bag_eqv_sym: forall b1 b2, bag_eqv b1 b2 -> bag_eqv b2 b1. 
Proof. unfold bag_eqv. intros. symmetry. apply H. Qed.

Lemma bag_eqv_trans: forall b1 b2 b3, bag_eqv b1 b2 -> bag_eqv b2 b3 -> bag_eqv b1 b3.
Proof. unfold bag_eqv. intros. rewrite H. apply H0. Qed.

Lemma bag_eqv_cons : forall x b1 b2, bag_eqv b1 b2 -> bag_eqv (x::b1) (x::b2).
Proof. unfold bag_eqv. intros. simpl. rewrite H. reflexivity. Qed.

Lemma insert_bag: forall x l, bag_eqv (x::l) (insert x l).
Proof.
  unfold bag_eqv. intros. induction l.
  - simpl. reflexivity.
  - simpl. destruct (x <=? a). simpl. reflexivity. simpl. rewrite <- IHl. simpl. lia.
Qed.

Theorem sort_bag: forall l, bag_eqv l (sort l).
  unfold bag_eqv. intros. induction l.
  simpl. reflexivity.
  simpl. 
  (* HELPER LEMMA $ sort_bag_by_insert_bag $ *)
  rewrite <- insert_bag. simpl. rewrite IHl. reflexivity.
Qed.

Lemma perm_bag: forall al bl : list nat, Permutation al bl -> bag_eqv al bl. 
Proof.
  intros. induction H.
  - unfold bag_eqv. intros. reflexivity.
  - (* HELPER LEMMA $ perm_bag_by_bag_eqv_cons $ *)
  apply bag_eqv_cons. assumption.
  - unfold bag_eqv. intros. simpl. lia.
  - (* HELPER LEMMA $ perm_bag_by_bag_eqv_trans $ *)
  eapply bag_eqv_trans. eapply IHPermutation1. assumption.
Qed.

Lemma bag_nil_inv : forall b, bag_eqv [] b -> b = []. 
Proof.
  intros. induction b.
  - reflexivity.
  - unfold bag_eqv in H. simpl in H. remember (a =? a) as H1. destruct H1.
  assert (0 = (if a =? a then 1 else 0) + count a b). apply (H a). rewrite <- HeqH1 in H0. lia. 
  symmetry in HeqH1. apply Nat.eqb_neq in HeqH1. lia.
Qed.

Lemma bag_cons_inv : forall l x n, S n = count x l -> exists l1 l2, l = l1 ++ x :: l2 /\ count x (l1 ++ l2) = n.
Proof.
  induction l.
  - intros. simpl in H. lia.
  - intros. simpl in H. bdestruct (a =? x). destruct n. exists [], l. split. simpl. rewrite H0. reflexivity. simpl. lia.
  assert (S n = count x l). lia. apply IHl in H1. inversion H1 as [l1 [l2 [H2 H3]]]. exists (a :: l1), l2. split. simpl. 
  rewrite H2. reflexivity. rewrite H0. simpl. bdestruct (x =? x). lia. lia. simpl in H. apply IHl in H. inversion H as [l1 [l2 [H1 H2]]]. 
  exists (a :: l1), l2. split. simpl. rewrite H1. reflexivity. simpl. (bdestruct (a =? x)). lia. lia.
Qed.

Lemma count_insert_other : forall l1 l2 x y, y <> x -> count y (l1 ++ x :: l2) = count y (l1 ++ l2).
Proof.
  induction l1.
  - intros. simpl. bdestruct (x =? y). lia. reflexivity.
  - intros. simpl. bdestruct (a =? y). simpl. rewrite IHl1. reflexivity. assumption. apply IHl1. assumption.
Qed.

Lemma bag_eqv_uncons : forall b l1 l2, bag_eqv (b :: l1) (b :: l2) -> bag_eqv l1 l2.
Proof.
  intro b. induction l1.
  - intros. unfold bag_eqv in *. intros. simpl in H. assert ((if b =? n then 1 else 0) + 0 = (if b =? n then 1 else 0) + count n l2). apply (H n). bdestruct (b =? n). simpl. lia. simpl. lia.
  - unfold bag_eqv in *. intros. simpl in H. simpl. assert ((if b =? n then 1 else 0) +
((if a =? n then 1 else 0) + count n l1) =
(if b =? n then 1 else 0) + count n l2). apply H. lia.
Qed.

Lemma bag_perm: forall al bl, bag_eqv al bl -> Permutation al bl.
Proof.
  induction al.
  - intros. apply bag_nil_inv in H. rewrite H. constructor.
  - intros. destruct bl. unfold bag_eqv in H. 
  assert (count a (a :: al) = count a []). apply H. simpl in H0. bdestruct (a =? a). lia. lia.
  bdestruct (a =? n). rewrite H0. constructor. apply IHal. rewrite H0 in H. 
  (* HELPER LEMMA $ bag_perm_by_bag_eqv_uncons $ *)
  apply (bag_eqv_uncons n). assumption.
  unfold bag_eqv in H. assert (count a (a :: al) = count a (n :: bl)). apply H. simpl in H1. 
  bdestruct (a =? a). bdestruct (n =? a). lia. simpl in H1.
  (* HELPER LEMMA $ bag_perm_by_bag_cons_inv $ *)
  apply bag_cons_inv in H1. inversion H1. inversion H4. inversion H5.
  assert (Permutation al (n :: x ++ x0)). apply IHal. unfold bag_eqv. intros.
  bdestruct (n0 =? a). rewrite H8. simpl. bdestruct (n =? a). lia. simpl. rewrite H7. reflexivity. rewrite H6 in H. 
  assert (count n0 (a :: al) = count n0 (n :: x ++ a :: x0)). apply H. 
  (* HELPER LEMMA $ bag_perm_by_app_comm_cons_1 $ *)
  rewrite app_comm_cons.
  (* HELPER LEMMA $ bag_perm_by_count_insert_other $ *)
  rewrite <- (count_insert_other (n :: x) x0 a n0). rewrite <- H.
  simpl. bdestruct (a =? n0). lia. reflexivity.  
  assumption. apply (perm_skip a) in H8. 
  (* HELPER LEMMA $ bag_perm_by_app_comm_cons_2 $ *)
  rewrite app_comm_cons in H8. clear H2. clear H3.
  (* HELPER LEMMA $ bag_perm_by_Permutation_middle $ *)
  rewrite Permutation_middle in H8. simpl in H8. rewrite <- H6 in H8. assumption. lia.
Qed.

Theorem bag_eqv_iff_perm: forall al bl, bag_eqv al bl <-> Permutation al bl.
Proof.
  intros. split. 
  (* HELPER LEMMA $ bag_eqv_iff_perm_by_bag_perm $ *)
  apply bag_perm. 
  (* HELPER LEMMA $ bag_eqv_iff_perm_by_perm_bag $ *)
  apply perm_bag.
Qed.
