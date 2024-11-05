(** * SearchTree: Binary Search Trees *)
(* Removed tests that use anything from Maps module because 
decidability over a Map is undecidable.  *)

Set Warnings "-notation-overridden,-parsing,-deprecated-hint-without-locality".
From Coq Require Import String. 
From Coq Require Import Logic.FunctionalExtensionality.
From Coq Require Import micromega.Lia.

(* From LFindToo Require Import LFindToo. *)

Require Import vfa_searchtree_benchmarks.Definitions.
Require Import vfa_searchtree_benchmarks.Decide.

(* These specify the libraries of functions that should be considered during synthesis that 
    are not defined within the above libraries. *)
Require Import Coq.Lists.List.
Require Import Coq.Sorting.Permutation.

Ltac bdestruct_guard :=
match goal with
| |- context [ if Nat.eqb ?X ?Y then _ else _ ] => bdestruct (Nat.eqb X Y)
| |- context [ if ?X <=? ?Y then _ else _ ] => bdestruct (X <=? Y)
| |- context [ if Nat.ltb ?X ?Y then _ else _ ] => bdestruct (Nat.ltb X Y)
end.

Ltac bdall := repeat (simpl; bdestruct_guard; try lia; auto).

(* ================================================================= *)
(* ====================== [Lemmas and Theorems] ==================== *)
(* ================================================================= *)

(* NO HELPER LEMMAS *)
Theorem empty_tree_BST : forall (V : Type), BST (@empty_tree V).
Proof. unfold empty_tree. constructor. Qed.

(* NO HELPER LEMMAS *)
Lemma ForallT_insert : forall (V : Type) (P : key -> V -> Prop) (t : tree V),
    ForallT P t -> forall (k : key) (v : V),
    P k v -> ForallT P (insert k v t).
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

(* MAIN THEOREM *)
Theorem insert_BST : forall (V : Type) (k : key) (v : V) (t : tree V),
    BST t -> BST (insert k v t).
Proof.
    intros. induction H.
    - simpl. constructor. simpl. auto. simpl. auto. apply empty_tree_BST. apply empty_tree_BST.
    - simpl. bdestruct (Nat.ltb k x). constructor. 
    (* HELPER LEMMA - case 3 (generalized) *)
    apply ForallT_insert. assumption. assumption. assumption. assumption. assumption. bdestruct (Nat.ltb x k). constructor. assumption. 
    (* HELPER LEMMA - case 3 (generalized) *)
    apply ForallT_insert. assumption. assumption. assumption. assumption. constructor.  assert (k=x). lia. rewrite H5. assumption. assert (k=x). lia. rewrite H5. assumption. assumption. assumption.
Qed.

(* ################################################################# *)
(** * Correctness of BST Operations *)

(* NO HELPER LEMMAS *)
Theorem lookup_empty : forall (V : Type) (d : V) (k : key), lookup d k empty_tree = d.
Proof. auto. Qed.

(* NO HELPER LEMMAS *)
Theorem lookup_insert_eq : forall (V : Type) (t : tree V) (d : V) (k : key) (v : V), lookup d k (insert k v t)  = v.
Proof.
    intros. induction t. simpl. bdestruct (Nat.ltb k k). contradict H. lia. reflexivity.
    simpl. bdestruct (Nat.ltb k k0). simpl. bdestruct (Nat.ltb k k0). assumption. lia. bdestruct (Nat.ltb k0 k). simpl. bdestruct (Nat.ltb k k0). lia. bdestruct (Nat.ltb k0 k). assumption. contradict H0. lia. simpl. bdestruct (Nat.ltb k k). contradict H1. lia. reflexivity.
Qed.

(* NO HELPER LEMMAS *)
Theorem lookup_insert_eq' : forall (V : Type) (t : tree V) (d : V) (k : key) (v : V), lookup d k (insert k v t) = v.
Proof. intros. induction t. simpl.  bdestruct (Nat.ltb k k). lia. auto. simpl.
  bdestruct (Nat.ltb k k0). simpl. bdestruct (Nat.ltb k k0). auto. bdestruct (Nat.ltb k0 k). lia. lia.
  bdestruct (Nat.ltb k0 k). simpl. bdestruct (Nat.ltb k k0). lia. bdestruct (Nat.ltb k0 k). auto. lia. 
  simpl. bdestruct (Nat.ltb k k). lia. auto. Qed.

(* NO HELPER LEMMAS *)
Theorem lookup_insert_neq : forall (V : Type) (t : tree V) (d : V) (k k' : key) (v : V), k <> k' -> lookup d k' (insert k v t) = lookup d k' t.
Proof. intros. induction t. bdall. simpl. bdall. Qed.

(* ################################################################# *)
(* NO HELPER LEMMAS *)
Theorem bound_default : forall (V : Type) (k : key) (d : V) (t : tree V), bound k t = false -> lookup d k t = d.
Proof.
    intros. induction t. simpl. reflexivity. 
    simpl. bdall. apply IHt1. inversion H. bdestruct (Nat.ltb k k0). reflexivity. contradict H1. lia.
    apply IHt2. inversion H. bdestruct (Nat.ltb k k0). contradict H1. lia. bdestruct (Nat.ltb k0 k). reflexivity. contradict H1. lia.
    bdestruct (Nat.eqb k k0). rewrite H2 in H. simpl in H. bdestruct (Nat.ltb k0 k0). contradict H3. lia. contradict H. discriminate. contradict H2. lia.
Qed.

(* ################################################################# *)
(* NO HELPER LEMMAS *)
Lemma lookup_insert_shadow : forall (V : Type) (t : tree V) (v v' d: V) (k k' : key), lookup d k' (insert k v (insert k v' t)) = lookup d k' (insert k v t).
Proof. intros. induction t. bdall. simpl. bdall. Qed.

(* NO HELPER LEMMAS *)
Lemma lookup_insert_same : forall (V : Type) (k k' : key) (d : V) (t : tree V), lookup d k' (insert k (lookup d k t) t) = lookup d k' t.
Proof. intros. induction t. bdall. simpl. bdall. Qed.

(* NO HELPER LEMMAS *)
Lemma lookup_insert_permute : forall (V : Type) (v1 v2 d : V) (k1 k2 k': key) (t : tree V),
    k1 <> k2 -> lookup d k' (insert k1 v1 (insert k2 v2 t)) = lookup d k' (insert k2 v2 (insert k1 v1 t)).
Proof. intros. induction t. bdall. simpl. bdall. Qed.

(* NO HELPER LEMMAS *)
Lemma insert_shadow_equality : forall (V : Type) (t : tree V) (k : key) (v v' : V), insert k v (insert k v' t) = insert k v t.
Proof.
    intros. induction t. bdall. simpl. bdall. 
    rewrite IHt1. reflexivity.
    rewrite IHt2. reflexivity.
Qed.

(* ################################################################# *)

(* NO HELPER LEMMAS *)
Lemma insert_same_equality_breaks : exists (V : Type) (d : V) (t : tree V) (k : key), insert k (lookup d k t) t <> t.
Proof. exists bool, true, E, 0. simpl. discriminate. Qed.

(* NO HELPER LEMMAS *)
Lemma insert_permute_equality_breaks : exists (V : Type) (v1 v2 : V) (k1 k2 : key) (t : tree V),
    k1 <> k2 /\ insert k1 v1 (insert k2 v2 t) <> insert k2 v2 (insert k1 v1 t).
Proof. exists bool, true, false, 0, 1, E. simpl. split. lia. discriminate. Qed.

(* ################################################################# *)

Theorem elements_complete : forall (V : Type) (k : key) (v d : V) (t : tree V),
    BST t -> bound k t = true -> lookup d k t = v -> In (k, v) (elements t).
Proof.
    (* intros. unfold elements_complete_spec.  *)
    intros. induction H.
    contradict H0. discriminate.
    simpl. inversion H0. bdestruct (Nat.ltb k x). 
    (* HELPER LEMMA - case 2 *)
    apply in_or_app. left. apply IHBST1. assumption. simpl in H1. bdestruct (Nat.ltb k x). assumption. contradict H5. lia.
    bdestruct (Nat.ltb x k). 
    (* HELPER LEMMA - case 2 *)
    apply in_or_app. right. simpl. right. apply IHBST2. assumption. simpl in H1. bdestruct (Nat.ltb k x). contradict H8. lia. bdestruct (Nat.ltb x k).  assumption. contradict H7. lia.
    (* HELPER LEMMA - case 2 *)
    apply in_or_app. right. simpl. left. inversion H1. bdestruct (Nat.eqb x k). rewrite H9. simpl. bdall. contradict H9. lia.
Qed.

Lemma Forall_app : forall (A: Type) (P : A -> Prop) (l1 l2 : list A),
    Forall P l1 -> Forall P l2 -> Forall P (l1 ++ l2).
Proof.
    intros. induction H. simpl. assumption. simpl. 
    (* HELPER LEMMA - case 3 generalized *)
    apply Forall_cons. assumption. apply IHForall.
Qed.

Lemma elements_preserves_forall : forall (V : Type) (P : key -> V -> Prop) (t : tree V),
    ForallT P t -> Forall (uncurry P) (elements t).
Proof.
    intros. induction t. simpl. apply Forall_nil. simpl. 
    (* HELPER LEMMA - case 2 *)
    apply Forall_app. apply IHt1. inversion H. inversion H1. assumption.
    (* HELPER LEMMA - case 2 *)
    apply Forall_cons. inversion H. simpl. assumption. apply IHt2. inversion H. inversion H1. assumption.
Qed.

Lemma elements_preserves_relation : forall (V : Type) (k k' : key) (v : V) (t : tree V) (R : key -> key -> Prop),
    ForallT (fun y _ => R y k') t -> In (k, v) (elements t) -> R k k'.
Proof.
    intros. induction t. simpl in H0. contradiction.
    simpl in H0.
    (* HELPER LEMMA (in assumption) - not contradiction *)
    apply in_app_or in H0. inversion H. inversion H0. 
    apply IHt1. inversion H2. assumption. assumption.
    inversion H3. inversion H4. rewrite H6 in H1. assumption.
    apply IHt2. inversion H2. assumption. assumption.
Qed.

(* Todd added this lemma. *)
Lemma Forall_In : forall (A: Type) (P : A -> Prop) (a : A) (l : list A), Forall P l -> In a l -> P a.
Proof. intros. apply Forall_forall with (x:=a) in H. assumption. assumption. Qed.

Theorem elements_correct : forall (V : Type) (k : key) (v d : V) (t : tree V), 
    BST t -> In (k, v) (elements t) -> bound k t = true /\ lookup d k t = v.
Proof.
    (* intros. 
    unfold elements_correct_spec.  *)
    intros. induction H.
    - simpl in H0. contradiction.
    - simpl in H0. 
        (* HELPER LEMMA (in assumption) - not contradiction *)
        apply in_app_or in H0. inversion H0. simpl. 
        (* HELPER LEMMA - case 4 *)
        + bdall. 
        ++ apply elements_preserves_forall in H.
        (* HELPER LEMMA - case 4 *)
        apply Forall_In with (a:=(k,v)) in H. 
        +++ simpl in H. contradict H. lia. 
        +++ assumption.
        (* HELPER LEMMA - case 4 *)
        ++ apply elements_preserves_forall in H. 
        (* HELPER LEMMA - case 4 *)
        apply Forall_In with (a:=(k,v)) in H. 
        +++ simpl in H. contradict H. lia.
        +++ assumption.
        + simpl. bdall. inversion H4. inversion H6. rewrite H8 in H5. contradict H5. lia.
        (* HELPER LEMMA - case 4 *)
        apply elements_preserves_forall in H1. 
        (* HELPER LEMMA - case 4 *)
        apply Forall_In with (a:=(k,v)) in H1. simpl in H1. contradict H1. lia. assumption.
        inversion H4. inversion H7. rewrite H9 in H5. contradict H5. lia.
        apply IHBST2. assumption. split. reflexivity. inversion H4. inversion H7. reflexivity.
        (* HELPER LEMMA - case 4 *)
        apply elements_preserves_forall in H1. 
        (* HELPER LEMMA - case 4 *)
        apply Forall_In with (a:=(k,v)) in H1. simpl in H1. contradict H1. lia. assumption.
Qed.


Theorem elements_complete_inverse : forall (V : Type) (k : key) (v : V) (t : tree V), BST t -> bound k t = false -> ~ In (k, v) (elements t).
Proof.
    intros. unfold not. intros. induction H.
    - simpl in H1. contradiction.
    - simpl in H1. 
    (* HELPER LEMMA (in assumption) - not contradiction *)
    apply in_app_or in H1. inversion H1.
    apply IHBST1. inversion H0. bdall.
    (* HELPER LEMMA - case 4 *)
    apply elements_preserves_forall in H. 
    (* HELPER LEMMA - case 4 *)
    apply Forall_In with (a:=(k,v)) in H. simpl in H. contradict H. lia. assumption. assumption.
    inversion H5. inversion H6. rewrite H8 in H0. contradict H0. simpl. bdall.
    apply IHBST2. inversion H0. bdall.
    (* HELPER LEMMA - case 4 *)
    apply elements_preserves_forall in H2. 
    (* HELPER LEMMA - case 4 *)
    apply Forall_In with (a:=(k,v)) in H2. simpl in H2. contradict H2. lia. assumption. assumption.
Qed.

(* NO HELPER LEMMAS *)
Lemma bound_value : forall (V : Type) (k : key) (t : tree V), bound k t = true -> exists v, forall d, lookup d k t = v.
Proof.
    intros. induction t. simpl in H. discriminate.
    simpl in H. bdall. exists v. intros. reflexivity.
Qed.

Theorem elements_correct_inverse : forall (V : Type) (k : key) (t : tree V),
    BST t -> (forall v, ~ In (k, v) (elements t)) -> bound k t = false.
Proof.
    intros. induction H.
    - simpl. reflexivity.
    - simpl. bdall. apply IHBST1. intros. unfold not. intros. simpl in H0. apply (H0 v0). 
    (* HELPER LEMMA - case 2 *)
    apply in_or_app. left. assumption.
    apply IHBST2. intros. unfold not. intros. simpl in H0. apply (H0 v0). 
    (* HELPER LEMMA - case 2 *)
    apply in_or_app. right. simpl. right. assumption.
    simpl in H0. assert (k = x). lia. rewrite H6 in H0. assert (~ In (x, v) (elements l ++ (x, v) :: elements r)). apply H0. contradict H7. 
    (* HELPER LEMMA - case 2 *)
    apply in_or_app. right. simpl. left. reflexivity. 
Qed.

(* ================================================================= *)
(** ** Part 2: Sorted (Advanced) *)

(* NO HELPER LEMMAS (each is a constructor) *)
Lemma sorted_app: forall l1 l2 x, sorted l1 -> sorted l2 ->
    Forall (fun n => n < x) l1 -> Forall (fun n => n > x) l2 -> sorted (l1 ++ x :: l2).
Proof.
    intros. induction H. simpl. inversion H2. apply sorted_1. apply sorted_cons. lia. rewrite H4. assumption.
    simpl. apply sorted_cons. inversion H1. lia. inversion H2. apply sorted_1. apply sorted_cons. lia. rewrite H4. assumption.
    simpl. apply sorted_cons. assumption. apply IHsorted. inversion H1. assumption.
Qed.

Lemma forall_fst : forall (V : Type) (P : key -> Prop) (lst : list (key * V)),
    Forall (uncurry (fun (n : key) (_ : V) => P n)) lst -> Forall P (list_keys lst). 
Proof.
    intros. induction H. simpl. apply Forall_nil. simpl. 
    (* HELPER LEMMA - case 2 *)
    apply Forall_cons. unfold uncurry in H. destruct x. simpl. assumption. assumption.
Qed.

(* Attempting to use proposed method (instead of relying on provided lemmas) *)
Lemma sample : forall (V : Type) (v1 v3 : list (key * V)) (v2 : (key * V)), 
    sorted (map fst v1) -> sorted (map fst (v2 :: v3)) -> 
    Forall (fun (x : key) => x < (fst v2)) (map fst v1) -> sorted (map fst (v1 ++ v2 :: v3)).
Proof. Admitted.

Lemma sample2 : forall (V : Type) (x : (key * V)) (l : list (key * V)), Forall (uncurry (fun (y : key) (_ : V) => y > fst x)) l -> sorted (map fst l) -> sorted (map fst (x :: l)).
Proof. Admitted.

Theorem sorted_elements_alt_alt : forall (V : Type) (t : tree V), BST t -> sorted (list_keys (elements t)).
Proof.
    intros. induction H. simpl. apply sorted_nil. simpl.
    unfold list_keys.
    apply sample.
    - assumption.
    - apply sample2.
    -- simpl. apply elements_preserves_forall. assumption.
    -- assumption.
    - simpl. apply forall_fst. apply elements_preserves_forall. assumption.
Qed.

Theorem sorted_elements_alt : forall (V : Type) (t : tree V), BST t -> sorted (list_keys (elements t)).
Proof.
    intros. induction H. simpl. apply sorted_nil. simpl.
    unfold list_keys.
    rewrite map_app.
    rewrite map_cons.
    apply sorted_app.
    -   assumption. 
    -   assumption.
    -   apply forall_fst. 
        apply elements_preserves_forall.
        assumption.
    -   apply forall_fst. 
        apply elements_preserves_forall.
        assumption.
Qed.

Theorem sorted_elements : forall (V : Type) (t : tree V), BST t -> sorted (list_keys (elements t)).
Proof.
    intros. induction H. simpl. apply sorted_nil. simpl.
    (* HELPER LEMMA (in assumption) - not contradiction *)
    apply elements_preserves_forall in H.
    (* HELPER LEMMA (in assumption) - not contradiction *) 
    apply elements_preserves_forall in H0. unfold list_keys. 
    (* HELPER LEMMA - rewrite generalization (og lfind) *)
    rewrite map_app.
    (* HELPER LEMMA - rewrite generalization (og lfind) *)
    rewrite map_cons. 
    (* HELPER LEMMA - case 2 *)
    apply sorted_app. assumption. assumption. simpl. 
    (* HELPER LEMMA - case 3 (generalized) *)
    apply forall_fst. assumption. 
    (* HELPER LEMMA - case 3 (generalized) *)
    apply forall_fst. assumption.
Qed.

Lemma NoDup_append : forall (X:Type) (l1 l2: list X), NoDup l1 -> NoDup l2 -> disjoint l1 l2 -> NoDup (l1 ++ l2).
Proof.
    intros. induction H. simpl. assumption. simpl. 
    (* HELPER LEMMA - case 2 *)
    apply NoDup_cons. unfold not. intros. 
    (* HELPER LEMMA - case 4 *)
    apply in_app_or in H3. inversion H3. contradict H. assumption.
    unfold disjoint in H1. apply H1 in H4. assumption.
    simpl. left. reflexivity. apply IHNoDup. unfold disjoint in H1. simpl in H1. unfold disjoint. intros. apply (H1 x0). right. assumption.
Qed. 

Theorem elements_nodup_keys : forall (V : Type) (t : tree V), BST t -> NoDup (list_keys (elements t)).
Proof.
    intros. induction H. simpl. apply NoDup_nil.
    simpl. unfold list_keys. 
    (* HELPER LEMMA - original lfind but false under case 3 (targets rewrite) *)
    rewrite map_app.
    (* HELPER LEMMA - original lfind but false under case 3  (targets rewrite) *) 
    rewrite map_cons. 
    (* HELPER LEMMA - case 2 *)
    apply NoDup_append.
    - assumption.
    - (* HELPER LEMMA - case 2 *)
    apply NoDup_cons. simpl. unfold not. intros.
    (* HELPER LEMMA - case 4 *) 
    apply elements_preserves_forall in H0. 
    (* HELPER LEMMA - case 4 *)
    apply forall_fst in H0. 
    (* HELPER LEMMA - case 4 *)
    apply Forall_In with (a:=x) in H0. contradict H0. 
    lia. assumption. assumption.
    - unfold disjoint. intros. unfold not. intros. inversion H4. 
    + simpl in H5. 
    (* HELPER LEMMA - case 4 *)
    apply elements_preserves_forall in H. 
    (* HELPER LEMMA - case 4 *)
    apply forall_fst in H. 
    (* HELPER LEMMA - case 4 *)
    apply Forall_In with (a:=x) in H.
    ++ contradict H. lia.
    ++ rewrite H5. assumption.
    + (* HELPER LEMMA - case 4 *)
    apply elements_preserves_forall in H. 
    (* HELPER LEMMA - case 4 *)
    apply forall_fst in H. 
    (* HELPER LEMMA - case 4 *)
    apply Forall_In with (a:=x0) in H.
    ++ (* HELPER LEMMA - case 4 *)
    apply elements_preserves_forall in H0. 
    (* HELPER LEMMA - case 4 *)
    apply forall_fst in H0. 
    (* HELPER LEMMA - case 4 *)
    apply Forall_In with (a:=x0) in H0.
    +++ contradict H. lia.
    +++ assumption.
    ++ assumption.
Qed.

(* ################################################################# *) 

Lemma fast_elements_tr_helper : forall (V : Type) (t : tree V) (lst : list (key * V)), fast_elements_tr t lst = elements t ++ lst.
Proof.
    intros V t. induction t. intros. simpl. reflexivity.
    intros. simpl. rewrite IHt2. rewrite IHt1. 
    (* HELPER LEMMA - case 1 (generalization solves) *)
    apply (app_assoc (elements t1) ((k, v) :: elements t2) lst).
Qed.

Lemma fast_elements_eq_elements : forall (V : Type) (t : tree V), fast_elements t = elements t.
Proof.
    intros. unfold fast_elements. 
    (* HELPER LEMMA - case 1 (generalization solves) *)
    rewrite fast_elements_tr_helper. apply app_nil_r.
Qed.

Corollary fast_elements_correct : forall (V : Type) (k : key) (v d : V) (t : tree V),
BST t -> In (k, v) (fast_elements t) -> bound k t = true /\ lookup d k t = v.
Proof.
    intros. 
    (* HELPER LEMMA (rewrote in assumption) - not contradiction *)
    rewrite fast_elements_eq_elements in H0. 
    (* HELPER LEMMA - case 3 (not generalized) *)
    apply elements_correct. assumption. assumption.
Qed.

(* ################################################################# *)
(** * An Algebraic Specification of [elements] *)

(* NO HELPER LEMMAS *)
Lemma elements_empty : forall (V : Type), @elements V empty_tree = [].
Proof. intros. simpl. reflexivity. Qed.

(* NO HELPER LEMMAS *)
Lemma kvs_insert_split : forall (V : Type) (v v0 : V) (e1 e2 : list (key * V)) (k k0 : key),
    Forall (fun '(k',_) => k' < k0) e1 -> Forall (fun '(k',_) => k' > k0) e2 ->
        kvs_insert k v (e1 ++ (k0,v0):: e2) =
        if Nat.ltb k k0 then (kvs_insert k v e1) ++ (k0,v0)::e2
        else if Nat.ltb k0 k then e1 ++ (k0,v0)::(kvs_insert k v e2)
            else e1 ++ (k,v)::e2.
Proof.
    intros. induction e1. simpl. bdall.
    simpl. bdall. rewrite IHe1. 
    destruct a. bdall. inversion H. assumption.
    destruct a. inversion H. bdall. rewrite IHe1. reflexivity. assumption.
    destruct a. inversion H. bdall. rewrite IHe1. reflexivity. assumption.
Qed.

Lemma kvs_insert_elements : forall (V : Type) (t : tree V),
    BST t -> forall (k : key) (v : V), elements (insert k v t) = kvs_insert k v (elements t).
Proof.
    intros. induction H. simpl. reflexivity.
    simpl. bdall. 
    (* HELPER LEMMA - case 2 (complicated) *)
    rewrite kvs_insert_split.
    bdall. rewrite IHBST1. reflexivity.
    (* HELPER LEMMA - case 3 (generalized)*)
    apply elements_preserves_forall. assumption.
    (* apply elements_preserves_forall in H. assumption.  *)
    (* HELPER LEMMA (in assumption) - not contradiction *)
    apply elements_preserves_forall in H0. assumption.
    simpl. 
    (* HELPER LEMMA - case 2 (complicated) *)
    rewrite kvs_insert_split. bdall. rewrite IHBST2. reflexivity. 
    (* HELPER LEMMA (in assumption) - not contradiction *)
    apply elements_preserves_forall in H. assumption. 
    (* HELPER LEMMA (in assumption) - not contradiction *)
    apply elements_preserves_forall in H0. assumption.
    simpl. 
    (* HELPER LEMMA - case 2 (complicated) *)
    rewrite kvs_insert_split. bdall. 
    (* HELPER LEMMA (in assumption - not contradiction) *)
    apply elements_preserves_forall in H. assumption. 
    (* HELPER LEMMA (in assumption - not contradiction) *)
    apply elements_preserves_forall in H0. assumption.
Qed.
