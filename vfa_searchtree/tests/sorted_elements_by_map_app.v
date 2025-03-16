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
    apply in_or_app. right. simpl. left. inversion H1. bdestruct (Nat.eqb x k). rewrite H9. simpl. bdall. contradict H9. lia.
Qed.

Lemma Forall_app : forall (A: Type) (P : A -> Prop) (l1 l2 : list A),
    Forall P l1 -> Forall P l2 -> Forall P (l1 ++ l2).
Proof. 
    intros. induction H. simpl. assumption. simpl.  
    apply Forall_cons. assumption. apply IHForall.
Qed.

Lemma elements_preserves_forall : forall (P : nat -> value -> Prop) (t : tree), ForallT P t -> Forall (uncurry P) (elements t).
Proof. Admitted.

Lemma elements_preserves_forall_fixed : forall (t : tree), ForallT (fun _ v => v = Blue) t -> Forall (uncurry (fun _ v => v = Blue)) (elements t).
Proof.
    intros. induction t. simpl. apply Forall_nil. simpl. 
    (* HELPER LEMMA $ elements_preserves_forall_by_Forall_app $ *)
    apply Forall_app. apply IHt1. inversion H. inversion H1. assumption.
    apply Forall_cons. inversion H. simpl. assumption. apply IHt2. inversion H. inversion H1. assumption.
Qed.

Lemma elements_preserves_relation : forall (k k' : nat) (v : value) (t : tree) (R : nat -> nat -> Prop),
    ForallT (fun y _ => R y k') t -> In (k, v) (elements t) -> R k k'.
Proof. Admitted.

Lemma elements_preserves_relation_fixed : forall (k k' : nat) (v : value) (t : tree),
    ForallT (fun y _ => (fun x y => x <= y) y k') t -> In (k, v) (elements t) -> (fun x y => x <= y) k k'.
Proof.
    intros. induction t. simpl in H0. contradiction.
    simpl in H0.
    (* HELPER LEMMA $ elements_preserves_relation_by_in_app_or $ *)
    apply in_app_or in H0. inversion H. inversion H0. 
    apply IHt1. inversion H2. assumption. assumption.
    inversion H3. inversion H4. rewrite H6 in H1. assumption.
    apply IHt2. inversion H2. assumption. assumption.
Qed.

(* Todd added this lemma. *)
Lemma Forall_In : forall (A: Type) (P : A -> Prop) (a : A) (l : list A), Forall P l -> In a l -> P a.
Proof. intros. apply Forall_forall with (x:=a) in H. assumption. assumption. Qed.

Theorem elements_correct : forall (k : nat) (v d : value) (t : tree ), 
    BST t -> In (k, v) (elements t) -> bound k t = true /\ lookup d k t = v.
Proof.
    intros. induction H.
    - simpl in H0. contradiction.
    - simpl in H0. 
        (* HELPER LEMMA $ elements_correct_by_in_app_or $ *)
        apply in_app_or in H0. inversion H0. simpl. 
        + bdall. 
        ++ (* HELPER LEMMA $ elements_correct_by_elements_preserves_forall_1 $ *)
        apply elements_preserves_forall in H.
        (* HELPER LEMMA $ elements_correct_by_Forall_in_1 $ *)
        apply Forall_In with (a:=(k,v)) in H. 
        +++ simpl in H. contradict H. lia. 
        +++ assumption.
        (* HELPER LEMMA $ elements_correct_by_elements_preserves_forall_2 $ *)
        ++ apply elements_preserves_forall in H. 
        (* HELPER LEMMA $ elements_correct_by_Forall_in_2 $ *)
        apply Forall_In with (a:=(k,v)) in H. 
        +++ simpl in H. contradict H. lia.
        +++ assumption.
        + simpl. bdall. inversion H4. inversion H6. rewrite H8 in H5. contradict H5. lia.
        (* HELPER LEMMA $ elements_correct_by_elements_preserves_forall_3 $ *)
        apply elements_preserves_forall in H1. 
        (* HELPER LEMMA $ elements_correct_by_Forall_in_3 $ *)
        apply Forall_In with (a:=(k,v)) in H1. simpl in H1. contradict H1. lia. assumption.
        inversion H4. inversion H7. rewrite H9 in H5. contradict H5. lia.
        apply IHBST2. assumption. split. reflexivity. inversion H4. inversion H7. reflexivity.
        (* HELPER LEMMA $ elements_correct_by_elements_preserves_forall_4 $ *)
        apply elements_preserves_forall in H1. 
        (* HELPER LEMMA $ elements_correct_by_Forall_4 $ *)
        apply Forall_In with (a:=(k,v)) in H1. simpl in H1. contradict H1. lia. assumption.
Qed.

Theorem elements_complete_inverse : forall (k : nat) (v : value) (t : tree), BST t -> bound k t = false -> ~ In (k, v) (elements t).
Proof.
    intros. unfold not. intros. induction H.
    - simpl in H1. contradiction.
    - simpl in H1. 
    (* HELPER LEMMA $ elements_complete_inverse_by_in_app_or $ *)
    apply in_app_or in H1. inversion H1.
    apply IHBST1. inversion H0. bdall.
    (* HELPER LEMMA $ elements_complete_inverse_by_elements_preserves_forall_1 $ *)
    apply elements_preserves_forall in H. 
    (* HELPER LEMMA $ elements_complete_inverse_by_Forall_in_1 $ *)
    apply Forall_In with (a:=(k,v)) in H. simpl in H. contradict H. lia. assumption. assumption.
    inversion H5. inversion H6. rewrite H8 in H0. contradict H0. simpl. bdall.
    apply IHBST2. inversion H0. bdall.
    (* HELPER LEMMA $ elements_complete_inverse_by_elements_preserves_forall_1 $ *)
    apply elements_preserves_forall in H2. 
    (* HELPER LEMMA $ elements_complete_inverse_by_Forall_in_2 $ *)
    apply Forall_In with (a:=(k,v)) in H2. simpl in H2. contradict H2. lia. assumption. assumption.
Qed.

Lemma bound_value : forall (k : nat) (t : tree), bound k t = true -> exists v, forall d, lookup d k t = v.
Proof. intros. induction t. simpl in H. discriminate. simpl in H. bdall. exists v. intros. reflexivity. Qed.

Theorem elements_correct_inverse : forall (k : nat) (t : tree), BST t -> (forall v, ~ In (k, v) (elements t)) -> bound k t = false.
Proof.
    intros. induction H.
    - simpl. reflexivity.
    - simpl. bdall. apply IHBST1. intros. unfold not. intros. simpl in H0. apply (H0 v0). 
    (* HELPER LEMMA $ elements_correct_inverse_by_in_or_app_1 $ *)
    apply in_or_app. left. assumption.
    apply IHBST2. intros. unfold not. intros. simpl in H0. apply (H0 v0). 
    (* HELPER LEMMA $ elements_correct_inverse_by_in_or_app_2 $ *)
    apply in_or_app. right. simpl. right. assumption.
    simpl in H0. assert (k = x). lia. rewrite H6 in H0. assert (~ In (x, v) (elements l ++ (x, v) :: elements r)). apply H0. contradict H7. 
    (* HELPER LEMMA $ elements_correct_inverse_by_in_or_app_3 $ *)
    apply in_or_app. right. simpl. left. reflexivity. 
Qed.

Lemma sorted_app: forall l1 l2 x, sorted l1 -> sorted l2 ->
    Forall (fun n => n < x) l1 -> Forall (fun n => n > x) l2 -> sorted (l1 ++ x :: l2).
Proof.
    intros. induction H. simpl. inversion H2. apply sorted_1. apply sorted_cons. lia. rewrite H4. assumption.
    simpl. apply sorted_cons. inversion H1. lia. inversion H2. apply sorted_1. apply sorted_cons. lia. rewrite H4. assumption.
    simpl. apply sorted_cons. assumption. apply IHsorted. inversion H1. assumption.
Qed.

Lemma forall_fst {V} : forall (P : nat -> Prop) (lst : list (nat * V)), Forall (uncurry (fun (n : nat) (_ : V) => P n)) lst -> Forall P (list_keys lst). 
Proof.
    intros. induction H. simpl. apply Forall_nil. simpl. 
    apply Forall_cons. unfold uncurry in H. destruct x. simpl. assumption. assumption.
Qed.

Theorem sorted_elements_alt : forall (t : tree), BST t -> sorted (list_keys (elements t)).
Proof.
    intros. induction H. simpl. apply sorted_nil. simpl.
    unfold list_keys.
    rewrite map_app.
    rewrite map_cons.
    apply sorted_app.
    -   assumption. 
    -   assumption.
    -   apply forall_fst. 
        (* HELPER LEMMA $ sorted_elements_alt_by_elements_preserves_forall_1 $ *)
        apply elements_preserves_forall.
        assumption.
    -   apply forall_fst. 
        (* HELPER LEMMA $ sorted_elements_alt_by_elements_preserves_forall_1 $ *)
        apply elements_preserves_forall.
        assumption.
Qed.

Theorem sorted_elements : forall (t : tree), BST t -> sorted (list_keys (elements t)).
Proof.
    intros. induction H. simpl. apply sorted_nil. simpl.
    (* HELPER LEMMA $ sorted_elements_by_elements_preserves_forall_1 $ *)
    apply elements_preserves_forall in H.
    (* HELPER LEMMA $ sorted_elements_by_elements_preserves_forall_2 $ *)
    apply elements_preserves_forall in H0. unfold list_keys. 
    (* HELPER LEMMA $ sorted_elements_by_map_app $ *)
findlemma. Admitted.
(*
    rewrite map_app.
    (* HELPER LEMMA $ sorted_elements_by_map_cons $ *)
    rewrite map_cons. 
    (* HELPER LEMMA $ sorted_elements_by_sorted_app $ *)
    apply sorted_app. assumption. assumption. simpl. 
    (* HELPER LEMMA $ sorted_elements_by_forall_fst_1 $ *)
    apply forall_fst. assumption. 
    (* HELPER LEMMA $ sorted_elements_by_forall_fst_2 $ *)
    apply forall_fst. assumption.
Qed.
*)