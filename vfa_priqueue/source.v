Require Import vfa_priqueue_benchmarks.Definitions.
From vfa_priqueue_benchmarks Require Import Decide. 

Require Import Coq.Lists.List.
Require Import Coq.Sorting.Permutation. 

Lemma select_perm: forall i l j r, select i l = (j, r) -> Permutation (i::l) (j::r).
Proof.
  intros i l; revert i.
  induction l; intros; simpl in *. inversion H.
  reflexivity.
  bdestruct (i >=? a). destruct (select i l) eqn:Seq. inversion H.
  apply perm_trans with (a :: i :: l). apply perm_swap. apply perm_trans with (a :: j :: l0). apply perm_skip. specialize (IHl i). apply IHl in Seq. rewrite <- H2. assumption. apply perm_swap. 
  destruct (select a l) eqn:Seq. inversion H. apply perm_trans with (i :: j :: l0). apply perm_skip. specialize (IHl a). apply IHl in Seq. rewrite <- H2. assumption. apply perm_swap.
Qed.

Lemma select_biggest_aux: forall i al j bl, Forall (fun x => j >= x) bl -> select i al = (j,bl) -> j >= i.
Proof. 
  intros i al; revert i; induction al; intros; simpl in *. inversion H0. lia.
  bdestruct (i >=? a). destruct (select i al) eqn:?H. apply IHal in H2. inversion H0. lia.
  inversion H0. inversion H. rewrite <- H3 in H5. discriminate.
  rewrite <- H7 in H5. inversion H5. assumption.
  destruct (select a al) eqn:?H. apply IHal in H2. inversion H0. lia.
  inversion H0. inversion H. rewrite <- H5 in H3. discriminate. rewrite <- H5 in H7. inversion H7. rewrite <- H10. assumption.
Qed.

Theorem select_biggest: forall i al j bl, select i al = (j,bl) -> Forall (fun x => j >= x) bl.
Proof. 
  intros i al; revert i; induction al; intros; simpl in *. inversion H. constructor.
  bdestruct (i >=? a). destruct (select i al) eqn:?H. pose proof H1. apply IHal in H1. inversion H. constructor. 
  (* HELPER LEMMA $ select_biggest_by_select_biggest_aux_1 $ *)
  apply select_biggest_aux in H2. inversion H. lia. assumption. inversion H. rewrite <- H4. assumption.
  destruct (select a al) eqn:?H. pose proof H1. apply IHal in H1. inversion H. constructor.  
  (* HELPER LEMMA $ select_biggest_by_select_biggest_aux_2 $ *)
  apply select_biggest_aux in H2. lia. assumption. rewrite <- H4. assumption.
Qed.

Lemma can_relate : forall p, priq p -> exists al, Abs p al.
Proof. intros. exists p. reflexivity. Qed.

Lemma abs_perm: forall p al bl, priq p -> Abs p al -> Abs p bl -> Permutation al bl.
Proof. intros. rewrite <- H0. rewrite <- H1. reflexivity. Qed.

Lemma insert_priq: forall k p, priq p -> priq (insert k p).
Proof. intros; constructor. Qed.

Lemma insert_relate: forall p al k, priq p -> Abs p al -> Abs (insert k p) (k::al).
Proof. intros. unfold insert. apply perm_skip. assumption. Qed.

Lemma delete_max_Some_priq: forall p q k, priq p -> delete_max p = Some(k,q) -> priq q.
Proof. constructor. Qed.

Lemma delete_max_None_relate: forall p, priq p -> (Abs p nil <-> delete_max p = None).
Proof.
  intros. split.
  intros. symmetry in H0. 
  (* HELPER LEMMA $ delete_max_None_relate_by_Permutation_nil $ *)
  apply Permutation_nil in H0. rewrite H0. reflexivity.
  intros. destruct p. reflexivity. discriminate.
Qed.

Lemma forall_permutation: forall P (l l' : list nat), Permutation l l' -> Forall P l -> Forall P l'.
Proof.
  intros. induction H. 
  - apply Forall_nil.
  - apply Forall_cons.
  -- apply Forall_inv in H0. assumption.
  -- apply Forall_inv_tail in H0. apply IHPermutation. assumption.
  - apply Forall_cons.
  -- apply Forall_inv_tail in H0. apply Forall_inv in H0. assumption.
  -- apply Forall_cons. 
  + apply Forall_inv in H0. assumption. 
  + apply Forall_inv_tail in H0. apply Forall_inv_tail in H0. assumption.
  - apply IHPermutation2. apply IHPermutation1. assumption.
Qed.

Lemma delete_max_Some_relate: forall (p q: list nat) k (pl ql: list nat), priq p ->
  Abs p pl -> delete_max p = Some (k,q) -> Abs q ql -> Permutation pl (k::ql) /\ Forall (ge k) ql.
Proof.
  induction p. intros. discriminate. 
  intros. simpl in H1. inv H1. split.
  (* HELPER LEMMA $ delete_max_Some_relate_by_Permutation_trans_1 $ *)
  apply Permutation_trans with (l' := a :: p).
  symmetry. assumption. 
  (* HELPER LEMMA $ delete_max_Some_relate_by_Permutation_trans_2 $ *)
  apply Permutation_trans with (l' := k :: q).
  (* HELPER LEMMA $ delete_max_Some_relate_by_select_perm $ *)
  apply select_perm. assumption. 
  apply perm_skip. assumption.
  (* HELPER LEMMA $ delete_max_Some_relate_by_forall_permutation $ *)
  apply forall_permutation with (l := q). assumption.
  (* HELPER LEMMA $ delete_max_Some_relate_by_select_biggest $ *)
  apply (select_biggest a p). assumption.
Qed.

Lemma merge_priq: forall p q, priq p -> priq q -> priq (merge p q).
Proof. intros. constructor. Qed.

Lemma merge_relate: forall p q pl ql al, priq p -> priq q -> Abs p pl 
  -> Abs q ql -> Abs (merge p q) al -> Permutation al (pl++ql).
Proof. intros. rewrite <- H1. rewrite <- H2. symmetry. assumption. Qed.


