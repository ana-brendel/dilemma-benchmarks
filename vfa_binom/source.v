(* From LFindToo Require Import LFindToo. *)

Require Import vfa_binom_benchmarks.Definitions.
Require Import vfa_binom_benchmarks.Decide.


(* These specify the libraries of functions that should be considered during synthesis that 
    are not defined within the above libraries. *)
Require Import Coq.Lists.List.
Require Import Coq.Sorting.Permutation. 

(* ################################################################# *)
(** * Proof of Algorithm Correctness *)

(** **** Exercise: 1 star, standard (empty_priq)  *)
Theorem empty_priq: priq empty.
Proof. constructor. Qed.

Lemma smash_valid_helper_1: forall k k2: key, (k >? k2) = true -> k >= k2.
Proof.
    intros.
    apply Nat.ltb_lt in H.
    unfold ">=".
    apply Nat.lt_le_incl.
    assumption.
Qed.

Lemma smash_valid_helper_2: forall k k2: key, (k >? k2) = false -> k2 >= k.
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
    {
    simpl.
    destruct t2; destruct u2; auto.
    destruct (k >? k0) eqn:k_eq.
    {
        simpl. split; auto.
        (* HELPER LEMMA - case 3 (non-generalized) *)
        apply smash_valid_helper_1.
        assumption.
    }
    {
        simpl. split; auto.
        (* HELPER LEMMA - case 3 (non-generalized) *)
        apply smash_valid_helper_2.
        assumption.
    }
    }
    {
    inversion H0. }
    { inversion H. }
    { inversion H. }
Qed.

Theorem carry_valid: forall n q,  priq' n q -> forall t, (t=Leaf \/ pow2heap n t) -> priq' n (carry q t).
Proof.
  intros n q H. generalize dependent n. induction q. destruct t. simpl. split. 
  right. inversion H0. contradict H1. discriminate. simpl in H1. assumption. auto.
  simpl. auto.
  intros. inversion H0. rewrite H1. simpl. destruct a. assumption. assumption.
  destruct a. simpl. destruct t. 
  assert (pow2heap (S n) (smash (Node k0 t1 t2) (Node k a1 a2))). apply smash_valid. assumption. inversion H. inversion H2. contradict H4. discriminate. assumption. inversion H. unfold priq'. split. left. reflexivity. fold priq'. apply IHq. assumption. right. assumption.
  contradict H1. simpl. split. assumption. inversion H. assumption.
Qed.

Theorem insert_priq: forall x q, priq q -> priq (insert x q).
  induction q.
  intros.
  {
    unfold priq.
    unfold insert.
    simpl. auto.
  }
  {
    intros.
    induction a.
    {
      unfold priq, insert in *.
      simpl in H.
      inversion H.
      {
        apply carry_valid.
        {
          simpl.
          split; auto.
        }
        {
          right. simpl. auto.
        }
      }
    }
    {
      unfold priq, insert in *.
      (* HELPER LEMMA - case 2 *)
      apply carry_valid.
      - auto.
      - right. simpl. auto.
    }
  }
Qed.

Theorem join_valid: forall p q c n, priq' n p -> priq' n q -> (c=Leaf \/ pow2heap n c) -> priq' n (join p q c).
Proof.
  induction p. 
  - intros. simpl. apply carry_valid. assumption. assumption.
  - intros. destruct a. 
  * destruct q.
  ** unfold join. apply carry_valid. assumption. assumption.
  ** destruct t.
  + destruct c.
  ++ unfold join. fold join. unfold priq'. fold priq'. split. assumption. apply IHp.
  +++ inversion H. assumption.
  +++ inversion H0. assumption.
  +++ right. apply smash_valid.
  ++++ inversion H. inversion H2. discriminate. assumption.
  ++++ inversion H0. inversion H2. discriminate. assumption.
  ++ unfold join. fold join. unfold priq'. fold priq'. split.
  +++ left. reflexivity.
  +++ apply IHp. inversion H. assumption. inversion H0. assumption. right. apply smash_valid.
  -- inversion H. inversion H2. discriminate. assumption.
  -- inversion H0. inversion H2. discriminate. assumption.
  + destruct c.
  ++ unfold join. fold join. unfold priq'. fold priq'. split.
  +++ left. reflexivity.
  +++ apply IHp. inversion H. assumption. inversion H0. assumption. right. apply smash_valid. 
  -- inversion H. inversion H2. discriminate. inversion H1. discriminate. assumption.
  -- inversion H. inversion H2. discriminate. assumption.
  ++ unfold join. fold join. unfold priq'. fold priq'. split. 
  +++ right. inversion H. inversion H2. discriminate. assumption.
  +++ apply IHp. inversion H. assumption. inversion H0. assumption. left. reflexivity.
  * destruct q. 
  ** simpl. split. assumption. inversion H. assumption.
  ** destruct c. 
  *** unfold join. fold join. destruct t.
  + unfold priq'. fold priq'. split.
  ++ left. reflexivity.
  ++ apply IHp. inversion H. assumption. inversion H0. assumption. right. apply smash_valid. inversion H1. discriminate. assumption. inversion H0. inversion H2. discriminate. assumption.
  + unfold priq'. fold priq'. split. assumption. apply IHp. inversion H. assumption. inversion H0. assumption. left. reflexivity.
  *** unfold join. fold join. destruct t.
  + unfold priq'. fold priq'. split.
  ++ right. inversion H0. inversion H2. discriminate. assumption.
  ++ apply IHp. inversion H. assumption. inversion H0. assumption. left. reflexivity.
  + unfold priq'. fold priq'. split. assumption. apply IHp. inversion H. assumption. inversion H0. assumption. assumption.
Qed.

Theorem merge_priq:  forall p q, priq p -> priq q -> priq (merge p q).
Proof.
 intros. unfold merge. apply join_valid; auto.
Qed.

Lemma unzip_preq: forall t f n k, pow2heap' n k t -> priq' n (f nil) -> priq (unzip t f).
Proof.
  induction t. 
  - intros. simpl. destruct n. contradict H. apply (IHt2 _ n k0).
  -- inversion H. inversion H2. assumption.
  -- simpl. split.
  * inversion H. inversion H2. right. assumption.
  * assumption.
  - intros. simpl. destruct n.
  -- assumption.
  -- inversion H.
Qed.

Lemma delete_max_aux_priq: forall p n m q q', priq' n p -> delete_max_aux m p = (q,q') -> priq' n q /\ priq q'.
Proof.
  induction p. 
  - intros. simpl in H0. inversion H0. split. assumption. assumption.
  - intros. simpl in H0. destruct a.
  -- destruct a2.
  + inversion H0. split. unfold priq. reflexivity. unfold priq. reflexivity.
  + destruct (m >? k).
  ++ inversion H. destruct (delete_max_aux m p) eqn : D. apply (IHp (S n)) in D.
  +++ inversion D. inversion H0. split.
  * unfold priq'. fold priq'. inversion H. split. assumption. assumption.
  * inversion H0. rewrite <- H9. assumption.
  +++ assumption.
  ++ inversion H0. split.
  +++ simpl. split. left. reflexivity. inversion H. assumption.
  +++ apply (unzip_preq _ _ n k). inversion H. inversion H1. discriminate. assumption. reflexivity.
  -- destruct (delete_max_aux m p) eqn : D. apply (IHp (S n)) in D.
  + inversion D. inversion H0. split.
  ++ unfold priq'. fold priq'. inversion H. split. assumption. assumption.
  ++ rewrite <- H5. assumption.
  + inversion H. assumption.
Qed.

Theorem delete_max_Some_priq: forall p q k, priq p -> delete_max p = Some(k,q) -> priq q.
Proof.
  intros. unfold delete_max in H0. destruct (find_max p) eqn : F.
  - destruct (delete_max_aux k0 p) eqn : D. inversion H0. apply (delete_max_aux_priq _ 0) in D.
  -- inversion D. apply join_valid. assumption. assumption. left. reflexivity.
  -- assumption.
  - discriminate.
Qed. 

Theorem tree_elems_ext: forall t e1 e2, Permutation e1 e2 -> tree_elems t e1 -> tree_elems t e2.
Proof.
    induction t; intros; simpl in *.
    {
    inversion H0; subst.
    econstructor. { exact H4. } { exact H6. }
    {
        (* HELPER LEMMA - case 3 (generalized)*)
        eapply Permutation_trans.
        (* HELPER LEMMA - case 3 (non-generalized) -- includes existential variable *)
        eapply Permutation_sym.
        eassumption. assumption.
    }
    }
    {
    inversion H0; subst.
    assert (e2 = []).
    (* HELPER LEMMA - case 3 (non-generalized) *)
    apply Permutation_nil.
    assumption.
    subst. assumption.
    }
Qed.

Lemma Permutation_inv_cons: forall (A : Type) (l l' : list A) (a: A),
    Permutation l l' -> Permutation (a :: l) (a :: l').
Proof.
    intros.
    (* HELPER LEMMA - case 2 (new variables added - ghost) *)
    eapply Permutation_trans.
    - (* HELPER LEMMA - case 1 (existential needs to be filled) *)
    apply Permutation_cons_append.
    - (* HELPER LEMMA - case 2 *)
    apply Permutation_sym.
    (* HELPER LEMMA - case 2 (new variables added - ghost) *)
    eapply Permutation_trans.
    -- (* HELPER LEMMA - case 1 (existential needs to be filled) *)
    apply Permutation_cons_append.
    -- (* HELPER LEMMA - case 3 (generalized) *)
    eapply Permutation_app_tail.
    (* HELPER LEMMA - case 3 (non-generalized) *)
    apply Permutation_sym.
    assumption.
Qed.

Theorem tree_perm: forall t e1 e2, tree_elems t e1 -> tree_elems t e2 -> Permutation e1 e2.
Proof.
    induction t; intros; simpl in *.
    {
        inversion H; subst.
        inversion H0; subst.
        apply (IHt1 bl bl0) in H4; auto.
        apply (IHt2 br br0) in H6; auto.
        (* HELPER LEMMA - case 3 (non-generalized) *)
        eapply Permutation_trans; try eassumption.
        (* HELPER LEMMA - case 2 *)
        eapply Permutation_sym.
        (* HELPER LEMMA - case 2 (new variables added - ghost) *)
        eapply Permutation_trans; try eassumption.
        (* HELPER LEMMA - case 2 *)
        apply Permutation_inv_cons.
        (* HELPER LEMMA - case 3 (non-generalized) *)
        apply Permutation_app.
        { apply Permutation_sym. assumption. }
        { apply Permutation_sym. assumption. }
    }
    {
        inversion H; subst.
        inversion H0; subst.
        constructor.
    }
Qed.

Theorem priqueue_elems_ext: forall q e1 e2, Permutation e1 e2 -> priqueue_elems q e1 -> priqueue_elems q e2.
Proof.
  induction q; intros;
  inversion H0; subst.
  {
    assert (e2 = []).
    {
        (* HELPER LEMMA - case 3 (non-generalized) *)
        apply Permutation_nil.
        assumption.
    }
    { subst. constructor. }
  }
  {
    econstructor; try eassumption.
    (* HELPER LEMMA - case 2 *)
    eapply Permutation_sym.
    (* HELPER LEMMA - case 3 (generalized) (includes existential var)*)
    eapply Permutation_trans.
    (* HELPER LEMMA - case 3 (generalized) (includes existential var)*)
    eapply Permutation_sym.
    eassumption.
    assumption.
  }
Qed.

Lemma priqueue_perm: forall p elems1 elems2, priqueue_elems p elems1 -> priqueue_elems p elems2 -> Permutation elems1 elems2.
Proof.
  induction p; intros; simpl in *.
  {
    inversion H.
    inversion H0.
    constructor.
  }
  {
    inversion H; subst.
    inversion H0; subst.
    (* HELPER LEMMA - case 3 (non-generalized) *)
    eapply Permutation_trans; try eassumption.
    (* HELPER LEMMA - case 2 *)
    eapply Permutation_sym.
    (* HELPER LEMMA - case 2 (new variables added - ghost) *)
    eapply Permutation_trans; try eassumption.
    (* HELPER LEMMA - case 3 (non-generalized) *)
    apply Permutation_app.
    {
        (* HELPER LEMMA - case 3 (non-generalized) *)
        eapply tree_perm; eassumption.
    }
    {
        apply IHp; assumption.
    }
  }
Qed.

Theorem abs_perm: forall p al bl, priq p -> Abs p al -> Abs p bl -> Permutation al bl.
Proof.
  destruct p; intros; simpl in *.
  {
    inversion H0. inversion H1.
    constructor.
  }
  {
    inversion H0; subst.
    inversion H1; subst.
    (* HELPER LEMMA - case 3 (non-generalized) *)
    eapply Permutation_trans.
    eassumption.
    (* HELPER LEMMA - case 2 *)
    apply Permutation_sym.
    (* HELPER LEMMA - case 2 (new variables added - ghost) *)
    eapply Permutation_trans; try eassumption.
    clear H7 H10 H H0 H1.
    (* HELPER LEMMA - case 3 (non-generalized) *)
    apply Permutation_app.
    {
        (* HELPER LEMMA - case 3 (non-generalized) *)
        eapply tree_perm; eassumption.
    }
    {
        (* HELPER LEMMA - case 3 (non-generalized) *)
        eapply priqueue_perm; eassumption.
    }
  }
Qed.

Lemma tree_can_relate: forall t, exists al, tree_elems t al.
Proof.
  induction t.
  {
    inversion IHt1.
    inversion IHt2.
    eexists.
    econstructor; try eassumption.
    (* HELPER LEMMA - case 1 (existential variable) *)
    apply Permutation_refl.
  }
  {
    eexists.
    constructor.
  }
Qed.

Lemma priq'_can_relate: forall p n, priq' n p -> exists al, priqueue_elems p al.
Proof.
  induction p. 
  - intros. exists nil. apply priqueue_elems_nil.
  - intros. inversion H. assert (exists al, tree_elems a al).
  -- apply tree_can_relate.
  -- inversion H2. apply IHp in H1. inversion H1. exists (x++x0). eapply priqueue_elems_cons.
  + apply H3. + apply H4. + apply Permutation_refl.
Qed.

Theorem can_relate:  forall p, priq p -> exists al, Abs p al.
Proof.
  intros. eapply priq'_can_relate. apply H.
Qed.

(* ================================================================= *)
Theorem empty_relate:  Abs empty nil.
Proof.
  unfold Abs. apply priqueue_elems_nil.
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
  + simpl. destruct (k >? k0).
  ++ inversion H1. inversion H2. apply (tree_elems_node (k0::bl0++bl) nil).
  +++ eapply tree_elems_node. apply H13. apply H6. apply Permutation_refl.
  +++ apply tree_elems_leaf.
  +++ simpl. inversion H15. rewrite <- H18 in H16. inversion H8. rewrite <- H19 in H9. rewrite app_nil_r. rewrite app_nil_r in H9.
   rewrite app_nil_r in H16. apply (@Permutation_trans _ _ ((k::bl) ++ (k0::bl0))).
   * apply Permutation_app. assumption. assumption.
   * simpl. apply perm_skip. apply Permutation_app_comm.
  ++ inversion H1. inversion H2. apply (tree_elems_node (k::bl++bl0) nil).
  +++ eapply tree_elems_node. apply H6. apply H13. apply Permutation_refl.
  +++ apply tree_elems_leaf.
  +++ simpl. inversion H15. rewrite <- H18 in H16. inversion H8. rewrite <- H19 in H9. rewrite app_nil_r. rewrite app_nil_r in H9.
   rewrite app_nil_r in H16. apply (@Permutation_trans _ _ ((k::bl) ++ (k0::bl0))).
   * apply Permutation_app. assumption. assumption.
   * apply (@Permutation_trans _ _ ((k0::bl0) ++ (k::bl))). apply Permutation_app_comm. simpl. apply perm_skip. apply Permutation_app_comm.
  -- contradict H0.
  - contradict H.
Qed.

(* ================================================================= *)
(** ** Optional Exercises *)
(**  Some of these proofs are quite long, but they're not especially tricky. *)

Theorem carry_elems: forall n q,  priq' n q -> 
  forall t, (t=Leaf \/ pow2heap n t) ->
  forall eq et, priqueue_elems q eq -> tree_elems t et -> priqueue_elems (carry q t) (eq++et).
Proof. (* FILL IN HERE *) Admitted.

Theorem insert_relate: forall p al k, priq p -> Abs p al -> Abs (insert k p) (k::al).
Proof. (* FILL IN HERE *) Admitted.

Theorem join_elems: forall p q c n, priq' n p -> priq' n q -> (c=Leaf \/ pow2heap n c) ->
  forall pe qe ce, priqueue_elems p pe -> priqueue_elems q qe -> tree_elems c ce -> priqueue_elems (join p q c) (ce++pe++qe).
Proof. (* FILL IN HERE *) Admitted.

Theorem merge_relate: forall p q pl ql al,
  priq p -> priq q -> Abs p pl -> Abs q ql -> Abs (merge p q) al -> Permutation al (pl++ql).
Proof. (* FILL IN HERE *) Admitted.

Theorem delete_max_None_relate: forall p, priq p -> (Abs p nil <-> delete_max p = None).
Proof. (* FILL IN HERE *) Admitted.

Theorem delete_max_Some_relate: forall (p q: priqueue) k (pl ql: list key), 
  priq p -> Abs p pl -> delete_max p = Some (k,q) -> Abs q ql -> Permutation pl (k::ql) /\ Forall (ge k) ql.
Proof. (* FILL IN HERE *) Admitted.


