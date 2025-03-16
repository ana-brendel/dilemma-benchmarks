From LFindToo Require Import LFindToo.

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
    simpl in H.
    inversion H.
    (* HELPER LEMMA $ insert_priq_by_carry_valid_1 $ *)
    apply carry_valid.
    simpl.
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
findlemma. Admitted.
(*
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
*)