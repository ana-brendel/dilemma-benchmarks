From LFindToo Require Import LFindToo.

(** * SearchTree: Binary Search Trees *)
(* Removed tests that use anything from Maps module because 
decidability over a Map is undecidable.  *)

Set Warnings "-notation-overridden,-parsing,-deprecated-hint-without-locality".
From Coq Require Import String. 
From Coq Require Import Logic.FunctionalExtensionality.
From Coq Require Import micromega.Lia.

Require Import vfa_searchtree_benchmarks.Definitions.
From vfa_searchtree_benchmarks Require Import Decide.

(* These specify the libraries of functions that should be considered during synthesis that 
    are not defined within the above libraries. *)
Require Import Coq.Lists.List.
Require Import Coq.Sorting.Permutation.

Theorem empty_tree_BST : BST (empty_tree).
Proof. unfold empty_tree. constructor. Qed.

Lemma ForallT_insert : forall (P : nat -> value -> Prop) (t : tree ),
    ForallT P t -> forall (k : nat) (v : value), P k v -> ForallT P (insert k v t).
Proof.
    intros. induction t.
    - simpl. auto.
    - simpl. destruct (Nat.ltb k k0).
        + simpl. split. inversion H. assumption.
        split. apply IHt1. inversion H. inversion H2. assumption.
        inversion H. inversion H2. assumption.
        + destruct (Nat.ltb k0 k). inversion H. inversion H2.
        simpl. split. assumption. split. assumption. apply IHt2. assumption.
        inversion H. inversion H2. simpl. split. assumption. split. assumption. assumption.
Qed.

Theorem insert_BST : forall (k : nat) (v : value) (t : tree), BST t -> BST (insert k v t).
Proof.
    intros. induction H.
    - simpl. constructor. simpl. auto. simpl. auto. apply empty_tree_BST. apply empty_tree_BST.
    - simpl. bdestruct (Nat.ltb k x). constructor. 
    (* HELPER LEMMA $ insert_BST_by_ForallT_insert_1 $ *)
    apply ForallT_insert. assumption. assumption. assumption. assumption. assumption. bdestruct (Nat.ltb x k). constructor. assumption. 
    (* HELPER LEMMA $ insert_BST_by_ForallT_insert_1 $ *)
    apply ForallT_insert. assumption. assumption. assumption. assumption. constructor.  assert (k=x). lia. rewrite H5. assumption. assert (k=x). lia. rewrite H5. assumption. assumption. assumption.
Qed.

(* ################################################################# *)

Theorem lookup_empty : forall (d : value) (k : nat), lookup d k empty_tree = d. Proof. auto. Qed.

Theorem lookup_insert_eq : forall (t : tree) (d : value) (k : nat) (v : value), lookup d k (insert k v t)  = v.
Proof.
    intros. induction t. simpl. bdestruct (Nat.ltb k k). contradict H. lia. reflexivity.
    simpl. bdestruct (Nat.ltb k k0). simpl. bdestruct (Nat.ltb k k0). assumption. lia. bdestruct (Nat.ltb k0 k). simpl. 
    bdestruct (Nat.ltb k k0). lia. 
    bdestruct (Nat.ltb k0 k). assumption. contradict H0. lia. simpl. 
    bdestruct (Nat.ltb k k). contradict H1. lia. reflexivity.
Qed.

Theorem lookup_insert_eq' : forall (t : tree) (d : value) (k : nat) (v : value), lookup d k (insert k v t) = v.
Proof. intros. induction t. simpl.  bdestruct (Nat.ltb k k). lia. auto. simpl.
  bdestruct (Nat.ltb k k0). simpl. bdestruct (Nat.ltb k k0). auto. bdestruct (Nat.ltb k0 k). lia. lia.
  bdestruct (Nat.ltb k0 k). simpl. bdestruct (Nat.ltb k k0). lia. bdestruct (Nat.ltb k0 k). auto. lia. 
  simpl. bdestruct (Nat.ltb k k). lia. auto. 
Qed.

Theorem lookup_insert_neq : forall (t : tree) (d : value) (k k' : nat) (v : value), k <> k' -> lookup d k' (insert k v t) = lookup d k' t.
Proof. intros. induction t. bdall. simpl. bdall. Qed.

Theorem bound_default : forall (k : nat) (d : value) (t : tree), bound k t = false -> lookup d k t = d.
Proof.
    intros. induction t. simpl. reflexivity. 
    simpl. bdall. apply IHt1. inversion H. bdestruct (Nat.ltb k k0). reflexivity. contradict H1. lia.
    apply IHt2. inversion H. bdestruct (Nat.ltb k k0). contradict H1. lia. bdestruct (Nat.ltb k0 k). reflexivity. contradict H1. lia.
    bdestruct (Nat.eqb k k0). rewrite H2 in H. simpl in H. bdestruct (Nat.ltb k0 k0). contradict H3. lia. contradict H. discriminate. contradict H2. lia.
Qed.

Lemma lookup_insert_shadow : forall (t : tree) (v v' d: value) (k k' : nat), lookup d k' (insert k v (insert k v' t)) = lookup d k' (insert k v t).
Proof. intros. induction t. bdall. simpl. bdall. Qed.

Lemma lookup_insert_same : forall (k k' : nat) (d : value) (t : tree), lookup d k' (insert k (lookup d k t) t) = lookup d k' t.
Proof. intros. induction t. bdall. simpl. bdall. Qed.

Lemma lookup_insert_permute : forall (v1 v2 d : value) (k1 k2 k': nat) (t : tree),
    k1 <> k2 -> lookup d k' (insert k1 v1 (insert k2 v2 t)) = lookup d k' (insert k2 v2 (insert k1 v1 t)).
Proof. intros. induction t. bdall. simpl. bdall. Qed.

Lemma insert_shadow_equality : forall (t : tree) (k : nat) (v v' : value), insert k v (insert k v' t) = insert k v t.
Proof.
    intros. induction t. bdall. simpl. bdall. 
    rewrite IHt1. reflexivity.
    rewrite IHt2. reflexivity.
Qed.

(* ################################################################# *)

Theorem elements_complete : forall (k : nat) (v d : value) (t : tree),
    BST t -> bound k t = true -> lookup d k t = v -> In (k, v) (elements t).
Proof.
    intros. induction H.
    contradict H0. discriminate.
    simpl. inversion H0. bdestruct (Nat.ltb k x). 
    (* HELPER LEMMA $ elements_complete_by_in_or_app_1 $ *)
    apply in_or_app. left. apply IHBST1. assumption. simpl in H1. bdestruct (Nat.ltb k x). assumption. contradict H5. lia.
    bdestruct (Nat.ltb x k). 
    (* HELPER LEMMA $ elements_complete_by_in_or_app_2 $ *)
    apply in_or_app. right. simpl. right. apply IHBST2. assumption. simpl in H1. bdestruct (Nat.ltb k x). contradict H8. lia. bdestruct (Nat.ltb x k).  assumption. contradict H7. lia.
    (* HELPER LEMMA $ elements_complete_by_in_or_app_3 $ *)
findlemma. Admitted.
(*
    apply in_or_app. right. simpl. left. inversion H1. bdestruct (Nat.eqb x k). rewrite H9. simpl. bdall. contradict H9. lia.
Qed.
*)