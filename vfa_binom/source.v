Require Import vfa_binom_benchmarks.Definitions.
From vfa_binom_benchmarks Require Import Decide.


(* These specify the libraries of functions that should be considered during synthesis that 
    are not defined within the above libraries. *)
Require Import Coq.Lists.List.
Require Import Coq.Sorting.Permutation. 

(* ################################################################# *)
(** * Proof of Algorithm Correctness *)

Lemma smash_valid_helper1: forall k k2: nat, (k >? k2) = true -> k >= k2.
Proof.
    intros.
    apply Nat.ltb_lt in H.
    unfold ">=".
    apply Nat.lt_le_incl.
    assumption.
Qed.

Lemma smash_valid_helper2: forall k k2: nat, (k >? k2) = false -> k2 >= k.
Proof.
    intros.
    unfold ">=".
    apply Nat.ltb_ge.
    assumption.
Qed.

Theorem smash_valid: forall n t u, pow2heap n t -> pow2heap n u -> pow2heap (S n) (smash t u).
Proof.
  intros.
  destruct t; destruct u.
  - simpl.
  destruct t2; destruct u2; auto.
  destruct (n0 >? n1) eqn:k_eq.
  simpl. split; auto.
  (* HELPER LEMMA $ smash_valid_by_smash_valid_helper1 $ *)
  apply smash_valid_helper1.
  assumption.
  simpl. split; auto.
  (* HELPER LEMMA $ smash_valid_by_smash_valid_helper2 $ *)
  apply smash_valid_helper2.
  assumption.
  - inversion H0. - inversion H. - inversion H. 
Qed.

Theorem carry_valid: forall n q,  priqq n q -> forall t, (t=Leaf \/ pow2heap n t) -> priqq n (carry q t).
Proof.
    intros n q H. generalize dependent n. induction q. 
    + destruct t. simpl. split. right. inversion H0. contradict H1. discriminate. 
    simpl in H1. assumption. auto. simpl. auto.
    + intros. destruct H0. 
    ++ simpl. destruct a. rewrite H0. assumption. rewrite H0. assumption.
    ++ destruct a. simpl. destruct t. split. left. reflexivity. apply IHq. inversion H. assumption. right.
    (* HELPER LEMMA $ carry_valid_by_smash_valid $ *)
    apply smash_valid. assumption. destruct H.
    destruct H. discriminate H. assumption. assumption. simpl.
    split. auto. simpl in H. destruct H. auto.
Qed.

Theorem insert_priq: forall x q, priq q -> priq (insert x q).
  induction q.
  intros.
  + unfold priq. unfold insert. simpl. auto.
  + intros. induction a.
  ++ unfold priq, insert in *.
    (* HELPER LEMMA $ insert_priq_by_carry_valid_1 $ *)
    apply carry_valid.
    simpl.
    simpl in H.
    inversion H.
    split; auto.
    right. simpl. auto.
  ++ unfold priq, insert in *.
    (* HELPER LEMMA $ insert_priq_by_carry_valid_2 $ *)
    apply carry_valid.
    - auto.
    - right. simpl. auto.
Qed.

Theorem join_valid: forall p q c n, priqq n p -> priqq n q -> (c=Leaf \/ pow2heap n c) -> priqq n (join p q c).
Proof.
  induction p. 
  - intros. simpl. 
  (* HELPER LEMMA $ join_valid_by_carry_valid_1 $ *)
  apply carry_valid. assumption. assumption.
  - intros. destruct a. 
  * destruct q.
  ** unfold join. 
  (* HELPER LEMMA $ join_valid_by_carry_valid_2 $ *)
  apply carry_valid. assumption. assumption.
  ** destruct t.
  + destruct c.
  ++ unfold join. fold join. unfold priqq. fold priqq. split. assumption. apply IHp.
  +++ inversion H. assumption.
  +++ inversion H0. assumption.
  +++ right. 
  (* HELPER LEMMA $ join_valid_by_smash_valid_1 $ *)
  apply smash_valid.
  ++++ inversion H. inversion H2. discriminate. assumption.
  ++++ inversion H0. inversion H2. discriminate. assumption.
  ++ unfold join. fold join. unfold priqq. fold priqq. split.
  +++ left. reflexivity.
  +++ apply IHp. inversion H. assumption. inversion H0. assumption. right. 
  (* HELPER LEMMA $ join_valid_by_smash_valid_2 $ *)
  apply smash_valid.
  -- inversion H. inversion H2. discriminate. assumption.
  -- inversion H0. inversion H2. discriminate. assumption.
  + destruct c.
  ++ unfold join. fold join. unfold priqq. fold priqq. split.
  +++ left. reflexivity.
  +++ apply IHp. inversion H. assumption. inversion H0. assumption. right. 
  (* HELPER LEMMA $ join_valid_by_smash_valid_3 $ *)
  apply smash_valid. 
  -- inversion H. inversion H2. discriminate. inversion H1. discriminate. assumption.
  -- inversion H. inversion H2. discriminate. assumption.
  ++ unfold join. fold join. unfold priqq. fold priqq. split. 
  +++ right. inversion H. inversion H2. discriminate. assumption.
  +++ apply IHp. inversion H. assumption. inversion H0. assumption. left. reflexivity.
  * destruct q. 
  ** simpl. split. assumption. inversion H. assumption.
  ** destruct c. 
  *** unfold join. fold join. destruct t.
  + unfold priqq. fold priqq. split.
  ++ left. reflexivity.
  ++ apply IHp. inversion H. assumption. inversion H0. assumption. right. 
  (* HELPER LEMMA $ join_valid_by_smash_valid_4 $ *)
  apply smash_valid. inversion H1. discriminate. assumption. inversion H0. inversion H2. discriminate. assumption.
  + unfold priqq. fold priqq. split. assumption. apply IHp. inversion H. assumption. inversion H0. assumption. left. reflexivity.
  *** unfold join. fold join. destruct t.
  + unfold priqq. fold priqq. split.
  ++ right. inversion H0. inversion H2. discriminate. assumption.
  ++ apply IHp. inversion H. assumption. inversion H0. assumption. left. reflexivity.
  + unfold priqq. fold priqq. split. assumption. apply IHp. inversion H. assumption. inversion H0. assumption. assumption.
Qed.

Theorem merge_priq:  forall p q, priq p -> priq q -> priq (merge p q).
Proof.
 intros. unfold merge. 
 (* HELPER LEMMA $ merge_priq_by_join_valid $ *)
 apply join_valid; auto.
Qed.

Lemma unzip_preq: forall t f n k, pow2heapp n k t -> priqq n (f nil) -> priq (unzip t f).
Proof.
  induction t. 
  - intros. simpl. destruct n0. contradict H. apply (IHt2 _ n0 k).
  -- inversion H. inversion H2. assumption.
  -- simpl. split.
  * inversion H. inversion H2. right. assumption.
  * assumption.
  - intros. simpl. destruct n.
  -- assumption.
  -- inversion H.
Qed.

Lemma delete_max_aux_priq: forall p n m q q', priqq n p -> delete_max_aux m p = (q,q') -> priqq n q /\ priq q'.
Proof.
  induction p. 
  - intros. simpl in H0. inversion H0. split. assumption. assumption.
  - intros. simpl in H0. destruct a.
  -- destruct a2.
  + inversion H0. split. unfold priq. reflexivity. unfold priq. reflexivity.
  + destruct (m >? n0).
  ++ inversion H. destruct (delete_max_aux m p) eqn : D. apply (IHp (S n)) in D.
  +++ inversion D. inversion H0. split.
  * unfold priqq. fold priqq. inversion H. split. assumption. assumption.
  * inversion H0. rewrite <- H9. assumption.
  +++ assumption.
  ++ inversion H0. split.
  +++ simpl. split. left. reflexivity. inversion H. assumption.
  +++ (* HELPER LEMMA $ delete_max_aux_priq_by_unzip_preq $ *)
  apply (unzip_preq _ _ n n0). inversion H. inversion H1. discriminate. assumption. reflexivity.
  -- destruct (delete_max_aux m p) eqn : D. apply (IHp (S n)) in D.
  + inversion D. inversion H0. split.
  ++ unfold priqq. fold priqq. inversion H. split. assumption. assumption.
  ++ rewrite <- H5. assumption.
  + inversion H. assumption.
Qed.

Theorem delete_max_Some_priq: forall p q k, priq p -> delete_max p = Some(k,q) -> priq q.
Proof.
  intros. unfold delete_max in H0. destruct (find_max p) eqn : F.
  - destruct (delete_max_aux n p) eqn : D. inversion H0. 
  (* HELPER LEMMA $ delete_max_Some_priq_by_delete_max_aux_priq $ *)
  apply (delete_max_aux_priq _ 0) in D.
  -- inversion D. 
  (* HELPER LEMMA $ delete_max_Some_priq_by_join_valid $ *)
  apply join_valid. assumption. assumption. left. reflexivity.
  -- assumption.
  - discriminate.
Qed. 

Theorem tree_elems_ext: forall t e1 e2, Permutation e1 e2 -> tree_elems t e1 -> tree_elems t e2.
Proof.
    induction t; intros; simpl in *.
    inversion H0; subst.
    econstructor. exact H4. exact H6.
    (* HELPER LEMMA $ tree_elems_ext_by_Permutation_trans $ *)
    apply Permutation_trans with (l' := e1).
    rewrite H. reflexivity. assumption.
    inversion H0; subst.
    (* HELPER LEMMA $ tree_elems_ext_by_Permutation_nil $ *)
    apply Permutation_nil in H.
    subst. assumption.
Qed.

Theorem tree_perm: forall t e1 e2, tree_elems t e1 -> tree_elems t e2 -> Permutation e1 e2.
Proof.
  induction t; intros; simpl in *.
  + inversion H; subst.
  inversion H0; subst.
  apply (IHt1 bl bl0) in H4; auto.
  apply (IHt2 br br0) in H6; auto.
  (* HELPER LEMMA $ tree_perm_by_Permutation_trans_1 $ *)
  eapply Permutation_trans; try eassumption.
  (* HELPER LEMMA $ tree_perm_by_Permutation_trans_2 $ *)
  eapply Permutation_trans with (l' := (n :: bl0 ++ br0)).
  apply perm_skip.
  (* HELPER LEMMA $ tree_perm_by_Permutation_app $ *)
  apply Permutation_app.
  assumption. assumption.
  rewrite H10. reflexivity.
  + inversion H; subst.
  inversion H0; subst.
  constructor.
Qed.

Theorem priqueue_elems_ext: forall q e1 e2, Permutation e1 e2 -> priqueue_elems q e1 -> priqueue_elems q e2.
Proof.
  induction q; intros;
  inversion H0; subst.
  + (* HELPER LEMMA $ priqueue_elems_ext_by_Permutation_nil $ *)
  apply Permutation_nil in H.
  subst. constructor. 
  + econstructor; try eassumption.
  (* HELPER LEMMA $ priqueue_elems_ext_by_Permutation_trans $ *)
  eapply Permutation_trans.
  symmetry; eassumption. assumption.
Qed.

Lemma priqueue_perm: forall p elems1 elems2, priqueue_elems p elems1 -> priqueue_elems p elems2 -> Permutation elems1 elems2.
Proof.
  induction p; intros; simpl in *.
  + inversion H.
  inversion H0.
  constructor.
  + inversion H; subst.
  inversion H0; subst.
  (* HELPER LEMMA $ priqueue_perm_by_Permutation_trans_1 $ *)
  eapply Permutation_trans; try eassumption.
  (* HELPER LEMMA $ priqueue_perm_by_Permutation_trans_2 $ *)
  apply Permutation_trans with (l' := (cons_elems0 ++ rest_elems0)).
  (* HELPER LEMMA $ priqueue_perm_by_Permutation_app $ *)
  - apply Permutation_app.
    (* HELPER LEMMA $ priqueue_perm_by_tree_perm $ *)
    eapply tree_perm. eassumption. assumption.
    eapply IHp. assumption. eassumption.
  - rewrite H9. reflexivity.
Qed.

Theorem abs_perm: forall p al bl, priq p -> Abs p al -> Abs p bl -> Permutation al bl.
Proof.
  destruct p; intros; simpl in *.
  + inversion H0. inversion H1.
  constructor.
  + inversion H0; subst. clear H0.
  inversion H1; subst. clear H1.
  (* HELPER LEMMA $ abs_perm_by_Permutation_trans_1 $ *)
  eapply Permutation_trans.
  eassumption.
  (* HELPER LEMMA $ abs_perm_by_Permutation_trans_2 $ *)
  apply Permutation_trans with (l' := (cons_elems0 ++ rest_elems0)).
  clear H7 H9 H.
  (* HELPER LEMMA $ abs_perm_by_Permutation_app $ *)
  apply Permutation_app.
  (* HELPER LEMMA $ abs_perm_by_tree_perm $ *)
  eapply tree_perm; eassumption.
  (* HELPER LEMMA $ abs_perm_by_priqueue_perm $ *)
  eapply priqueue_perm; eassumption.
  rewrite H9. reflexivity.
Qed.

Lemma tree_can_relate: forall t, exists al, tree_elems t al.
Proof.
  induction t.
  inversion IHt1.
  inversion IHt2.
  eexists.
  econstructor; try eassumption.
  auto.
  eexists.
  constructor.
Qed.

Lemma priqq_can_relate: forall p n, priqq n p -> exists al, priqueue_elems p al.
Proof.
  induction p. 
  - intros. exists nil. 
  apply priqueue_elems_nil.
  - intros. inversion H. assert (exists al, tree_elems a al).
  -- (* HELPER LEMMA $ priqq_can_relate_by_tree_can_relate $ *)
  apply tree_can_relate.
  -- inversion H2. apply IHp in H1. inversion H1. exists (x++x0). 
  eapply priqueue_elems_cons.
  + apply H3. + apply H4. + reflexivity.
Qed.

Theorem can_relate:  forall p, priq p -> exists al, Abs p al.
Proof.
  intros. 
  (* HELPER LEMMA $ can_relate_by_priqq_can_relate $ *)
  eapply priqq_can_relate. apply H.
Qed.

Theorem smash_elems: forall n t u bt bu, pow2heap n t -> pow2heap n u -> tree_elems t bt -> 
  tree_elems u bu -> tree_elems (smash t u) (bt ++ bu).
Proof.
  intros. unfold pow2heap in H. unfold pow2heap in H0. destruct t.
  - destruct u.
  -- destruct t2. 
  --- contradict H.
  --- destruct u2.
  + contradict H0.
  + simpl. destruct (n0 >? n1).
  ++ inversion H1. inversion H2. apply (tree_elems_node (n1::bl0++bl) nil).
  +++ eapply tree_elems_node. apply H13. apply H6. apply Permutation_refl.
  +++ apply tree_elems_leaf.
  +++ simpl. inversion H15. rewrite <- H18 in H16. inversion H8. rewrite <- H19 in H9. 
  
  (* rewrite <- H18 in *. clear H18. rewrite <- H19 in *. clear H19. 
  clear H15. clear H8. rewrite <- H4 in *. clear H4. rewrite <- H10 in *. clear H10.
  rewrite <- H14 in *. clear H14. rewrite <- H11 in *. clear H11. rewrite <- H7 in *. clear H7.
  rewrite <- H3 in *. clear H3. *)

  (* HELPER LEMMA $ smash_elems_by_app_nil_r_1 $ *)
  rewrite app_nil_r. 
  (* HELPER LEMMA $ smash_elems_by_app_nil_r_2 $ *)
  rewrite app_nil_r in H9.
  (* HELPER LEMMA $ smash_elems_by_app_nil_r_3 $ *)
  rewrite app_nil_r in H16.
  (* HELPER LEMMA $ smash_elems_by_Permutation_trans_1 $ *)
  apply (@Permutation_trans _ _ ((n0::bl) ++ (n1::bl0))).
  * (* HELPER LEMMA $ smash_elems_by_Permutation_app_1 $ *)
  apply Permutation_app. assumption. assumption.
  * simpl. apply perm_skip. 
  (* HELPER LEMMA $ smash_elems_by_Permutation_app_comm_1 $ *)
  apply Permutation_app_comm.
  ++ inversion H1. inversion H2. apply (tree_elems_node (n0::bl++bl0) nil).
  +++ eapply tree_elems_node. apply H6. apply H13. reflexivity.
  +++ apply tree_elems_leaf.
  +++ simpl. inversion H15. rewrite <- H18 in H16. inversion H8. rewrite <- H19 in H9. 
  (* HELPER LEMMA $ smash_elems_by_app_nil_r_4 $ *)
  rewrite app_nil_r. 
  (* HELPER LEMMA $ smash_elems_by_app_nil_r_5 $ *)
  rewrite app_nil_r in H9.
  (* HELPER LEMMA $ smash_elems_by_app_nil_r_6 $ *)
  rewrite app_nil_r in H16. 
  (* HELPER LEMMA $ smash_elems_by_Permutation_trans_2 $ *)
  apply (@Permutation_trans _ _ ((n0::bl) ++ (n1::bl0))).
  * (* HELPER LEMMA $ smash_elems_by_Permutation_app_1 $ *)
  apply Permutation_app. assumption. assumption.
  * (* HELPER LEMMA $ smash_elems_by_Permutation_trans_3 $ *)
  apply (@Permutation_trans _ _ ((n1::bl0) ++ (n0::bl))). 
  (* HELPER LEMMA $ smash_elems_by_Permutation_app_comm_2 $ *)
  apply Permutation_app_comm. simpl. apply perm_skip. 
  (* HELPER LEMMA $ smash_elems_by_Permutation_app_comm_3 $ *)
  apply Permutation_app_comm.
  -- contradict H0.
  - contradict H.
Qed.

(* ================================================================= *)
(** ** Optional Exercises *)
(**  Some of these proofs are quite long, but they're not especially tricky. *)

(* Theorem carry_elems: forall n q,  priqq n q -> 
  forall t, (t=Leaf \/ pow2heap n t) ->
  forall eq et, priqueue_elems q eq -> tree_elems t et -> priqueue_elems (carry q t) (eq++et).
Proof. (* FILL IN HERE *) Admitted.

Theorem insert_relate: forall p al k, priq p -> Abs p al -> Abs (insert k p) (k::al).
Proof. (* FILL IN HERE *) Admitted.

Theorem join_elems: forall p q c n, priqq n p -> priqq n q -> (c=Leaf \/ pow2heap n c) ->
  forall pe qe ce, priqueue_elems p pe -> priqueue_elems q qe -> tree_elems c ce -> priqueue_elems (join p q c) (ce++pe++qe).
Proof. (* FILL IN HERE *) Admitted.

Theorem merge_relate: forall p q pl ql al,
  priq p -> priq q -> Abs p pl -> Abs q ql -> Abs (merge p q) al -> Permutation al (pl++ql).
Proof. (* FILL IN HERE *) Admitted.

Theorem delete_max_None_relate: forall p, priq p -> (Abs p nil <-> delete_max p = None).
Proof. (* FILL IN HERE *) Admitted.

Theorem delete_max_Some_relate: forall (p q: priqueue) k (pl ql: list key), 
  priq p -> Abs p pl -> delete_max p = Some (k,q) -> Abs q ql -> Permutation pl (k::ql) /\ Forall (ge k) ql.
Proof. (* FILL IN HERE *) Admitted. *)
  