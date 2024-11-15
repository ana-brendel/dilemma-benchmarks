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

(* INCOMPLETE *)
Theorem carry_valid: forall n q,  priq' n q -> forall t, (t=Leaf \/ pow2heap n t) -> priq' n (carry q t).
Proof.
(* FILL IN HERE *) Admitted.

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

(* INCOMPLETE *)
Theorem join_valid: forall p q c n, priq' n p -> priq' n q -> (c=Leaf \/ pow2heap n c) -> priq' n (join p q c).
  induction p; induction q.
  {
    intros; simpl.
    inversion H1; subst; auto.
    unfold pow2heap in H2.
    destruct c.
    {
      destruct c2. { inversion H2. }
      { simpl. split; auto. }
    }
    {
      auto.
    }
  }
  {
    intros.
    simpl.
    simpl in H0.
    inversion H0.
    inversion H2.
    { subst.
      simpl. auto.
    }
    { unfold pow2heap in H4.
      destruct a.
      destruct a2. inversion H4.
      inversion H1; subst; auto.
      unfold pow2heap in H5.
      destruct c; simpl in H5; auto.
      simpl. destruct c2; simpl in H5; auto.
      split; auto.
      (* HELPER LEMMA - case 2 *)
      apply carry_valid. 
      auto.
      destruct (k0 >? k) eqn:Hk.
      {
        right. simpl.
        split.
        (* HELPER LEMMA - case 3 (non-generalized) *)
        apply smash_valid_helper_1. auto.
        auto.
      }
      {
        right.
        simpl.
        split; auto.
        (* HELPER LEMMA - case 3 (non-generalized) *)
        apply smash_valid_helper_2; auto.
      }
      {
        simpl.
        split; auto.
      }
    }
  }
  {
    intros.
    simpl. simpl in H.
    inversion H.
    inversion H2.
    {
      subst. simpl.
      split; auto.
    }
    {
      unfold pow2heap in H4.
      destruct a.
      destruct a2.
      {
        inversion H4.
      }
      {
        inversion H1.
        subst.
        simpl.
        split; auto.
        unfold pow2heap in H5.
        destruct c.
        destruct c2.
        inversion H5.
        simpl.
        split; auto.
        destruct (k0 >? k) eqn:Hk.
        {
            (* HELPER LEMMA - case 2 *)
            apply carry_valid. auto.
            right. simpl.
            (* HELPER LEMMA - (could rewrite to) case 3 (non-generalized) *)
            apply smash_valid_helper_1 in Hk.
            split; auto.
        }
        {
            (* HELPER LEMMA - case 2 *)
            apply carry_valid. auto.
            right. simpl.
            split; auto. 
            (* HELPER LEMMA - case 3 (non-generalized) *)
            apply smash_valid_helper_2; auto.
        }
        { inversion H5.
        }
      }
      {
        inversion H4.
      }
    }
  }
  { (* No HLemmas used*)
    intros.
    simpl. destruct a.
    + destruct a0.
    ++ simpl. split. assumption. destruct a2. 
    * apply IHp. inversion H. assumption. inversion H0. assumption. left. reflexivity.
    * destruct a0_2.
    ** apply IHp. inversion H. assumption. inversion H0. assumption. left. reflexivity.
    ** Admitted.

Theorem merge_priq:  forall p q, priq p -> priq q -> priq (merge p q).
Proof.
    intros. unfold merge.
    (* unfold priq. *)
    (* HELPER LEMMA - case 2 *)
    apply join_valid.
    - assumption.
    - assumption.
    - left; reflexivity. 
Qed.

(* INCOMPLETE *)
Theorem delete_max_Some_priq:
  forall p q k, priq p -> delete_max p = Some(k,q) -> priq q.
Proof.
(* FILL IN HERE *) Admitted.

(* ================================================================= *)
(** ** The Abstraction Relation *)

Inductive tree_elems: tree -> list key -> Prop :=
| tree_elems_leaf: tree_elems Leaf nil
| tree_elems_node:  forall bl br v tl tr b,
           tree_elems tl bl ->
           tree_elems tr br ->
           Permutation b (v::bl++br) ->
           tree_elems (Node v tl tr) b.

Inductive priqueue_elems: list tree -> list key -> Prop :=
| priqueue_elems_nil: priqueue_elems [] []
| priqueue_elems_cons: forall cons_tree rest_trees cons_elems rest_elems new_elems,
    tree_elems cons_tree cons_elems ->
    priqueue_elems rest_trees rest_elems ->
    Permutation new_elems (cons_elems ++ rest_elems) ->
    priqueue_elems (cons_tree :: rest_trees) new_elems.

Definition Abs (p: priqueue) (al: list key) := priqueue_elems p al.

(* ================================================================= *)
(** ** Sanity Checks on the Abstraction Relation *)

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

Theorem can_relate:  forall p, priq p -> exists al, Abs p al.
Proof.
(* FILL IN HERE *) Admitted.


(* ================================================================= *)
Theorem empty_relate:  Abs empty nil.
Proof.
(* FILL IN HERE *) Admitted.

(* Warning:  This proof is rather long. *)
Theorem smash_elems: forall n t u bt bu,
                     pow2heap n t -> pow2heap n u ->
                     tree_elems t bt -> tree_elems u bu ->
                     tree_elems (smash t u) (bt ++ bu).
(* FILL IN HERE *) Admitted.

(* ================================================================= *)
(** ** Optional Exercises *)
(**  Some of these proofs are quite long, but they're not especially tricky. *)

Theorem carry_elems:
      forall n q,  priq' n q ->
      forall t, (t=Leaf \/ pow2heap n t) ->
      forall eq et, priqueue_elems q eq ->
                          tree_elems t et ->
                          priqueue_elems (carry q t) (eq++et).
(* FILL IN HERE *) Admitted.

Theorem insert_relate:
        forall p al k, priq p -> Abs p al -> Abs (insert k p) (k::al).
(* FILL IN HERE *) Admitted.

Theorem join_elems:
                forall p q c n,
                      priq' n p ->
                      priq' n q ->
                      (c=Leaf \/ pow2heap n c) ->
                  forall pe qe ce,
                             priqueue_elems p pe ->
                             priqueue_elems q qe ->
                             tree_elems c ce ->
                              priqueue_elems (join p q c) (ce++pe++qe).
(* FILL IN HERE *) Admitted.

Theorem merge_relate:
    forall p q pl ql al,
       priq p -> priq q ->
       Abs p pl -> Abs q ql -> Abs (merge p q) al ->
       Permutation al (pl++ql).
Proof.
(* FILL IN HERE *) Admitted.

Theorem delete_max_None_relate:
        forall p, priq p -> (Abs p nil <-> delete_max p = None).
(* FILL IN HERE *) Admitted.

Theorem delete_max_Some_relate:
  forall (p q: priqueue) k (pl ql: list key), priq p ->
   Abs p pl ->
   delete_max p = Some (k,q) ->
   Abs q ql ->
   Permutation pl (k::ql) /\ Forall (ge k) ql.
(* FILL IN HERE *) Admitted.


