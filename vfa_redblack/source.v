Set Warnings "-notation-overridden,-parsing,-deprecated-hint-without-locality".

From LFindToo Require Import LFindToo.

(* These specify the libraries of functions that should be considered during synthesis that 
    are not defined within the above libraries. *)
Require Import Coq.Lists.List.
Require Import Coq.Sorting.Permutation.
From Coq Require Import ZArith.
From Coq Require Import micromega.Lia.

Require Import vfa_redblack_benchmarks.Definitions.
Require Import vfa_redblack_benchmarks.Decide.

(* ################################################################# *)
(** * Implementation *)

(* ###################################################################### *)
Lemma ins_not_E {V} : forall (x : key) (vx : V) (t : tree),
    ins x vx t <> E.
Proof.
    intros. destruct t; simpl.
    - discriminate.
    - unfold balance.
    repeat
        match goal with
        | |- (if ?x then _ else _) <> _ => destruct x
        | |- match ?c with Red => _ | Black => _  end <> _=> destruct c
        | |- match ?t with E => _ | T _ _ _ _ _ => _ end  <> _=> destruct t
        | |- T _ _ _ _ _ <> E => discriminate
        end.
Qed.

(* ###################################################################### *)

Lemma empty_tree_BST {V}: BST (@empty_tree V).
Proof. unfold empty_tree. constructor. Qed.

Lemma ForallT_imp {V} : forall (P Q : int -> V -> Prop) t,
    ForallT P t ->
    (forall k v, P k v -> Q k v) ->
    ForallT Q t.
Proof.
    induction t; intros.
    - auto.
    - destruct H as [? [? ?]]. repeat split; auto.
Qed.

Lemma ForallT_greater {V} : forall (t : @tree V) k k0,
    ForallT (fun k' _ => Abs k' > Abs k) t  ->
    Abs k > Abs k0 ->
    ForallT (fun k' _ => Abs k' > Abs k0) t.
Proof.
    intros. eapply ForallT_imp; eauto.
    intros. simpl in H1. lia.
Qed.

Lemma ForallT_less {V} : forall (t : @tree V) k k0,
    ForallT (fun k' _ => Abs k' < Abs k) t  ->
    Abs k < Abs k0 ->
    ForallT (fun k' _ => Abs k' < Abs k0) t.
Proof.
    intros; eapply ForallT_imp; eauto.
    intros. simpl in H1. lia.
Qed.

(** Now we can return to automating the proof. *)

Lemma balance_BST {V}: forall (c : color) (l : tree) (k : key) (v : V) (r : tree),
    ForallT (fun k' _ => (Abs k') < (Abs k)) l ->
    ForallT (fun k' _ => (Abs k') > (Abs k)) r ->
    BST l ->
    BST r ->
    BST (balance c l k v r).
Proof.
    intros. unfold balance. Admitted.
    (* repeat
    (match goal with
        |  |- BST  (match ?c with Red => _ | Black => _ end)  => destruct c
        |  |- BST  (match ?s with E => _ | T _ _ _ _ _ => _ end)  => destruct s
        |  |- ForallT _ (T _ _ _ _ _) => repeat split
        |  H: ForallT _ (T _ _ _ _ _) |- _ => destruct H as [? [? ?] ]
        |  H: BST (T _ _ _ _ _) |- _ => inversion H
        end;
        (try constructor; auto; try lia)).
    all: try eapply ForallT_greater; try eapply ForallT_less; eauto; try lia.
Qed. *)

Lemma balanceP {V} : forall (P : key -> V -> Prop) (c : color) (l r : tree) (k : key) (v : V),
    ForallT P l ->
    ForallT P r ->
    P k v ->
    ForallT P (balance c l k v r).
Proof.
    intros. unfold balance. Admitted.
    (* repeat
    (match goal with
        |  |- ForallT P (match ?c with Red => _ | Black => _ end)  => destruct c
        |  |- ForallT P  (match ?s with E => _ | T _ _ _ _ _ => _ end)  => destruct s
        |  |- ForallT _ (T _ _ _ _ _) => repeat split
        |  H: ForallT _ (T _ _ _ _ _) |- _ => destruct H as [? [? ?] ]
        |  H: BST (T _ _ _ _ _) |- _ => inv H
        end;
        (try constructor; auto; try lia)).
Qed. *)
    
Lemma insP {V} : forall (P : key -> V -> Prop) (t : tree) (k : key) (v : V),
    ForallT P t -> P k v -> ForallT P (ins k v t).
Proof.
    intros. induction t.
    - simpl. repeat split; auto.
    - simpl. destruct H as [? [? ?]]. 
    destruct (ltb k k0). 
    (* HELPER LEMMA - case 3 (generalized) *)
    + apply balanceP. auto. assumption. assumption.
    + destruct (ltb k0 k). 
    ++ (* HELPER LEMMA - case 3 (generalized) *)
    apply balanceP. assumption. auto. assumption.
    ++ simpl. repeat split; auto.
Qed.

Lemma ins_BST {V} : forall (t : tree) (k : key) (v : V),
    BST t ->
    BST (ins k v t).
Proof.
    intros. induction H.
    - simpl. constructor. repeat split; auto. repeat split; auto. constructor. constructor.
    - simpl. bdestruct (ltb k k0). 
    -- (* HELPER LEMMA - case 2 *) 
    apply balance_BST.
    --- (* HELPER LEMMA - case 3 (non-generalized) *)
    apply insP. assumption. assumption.
    --- assumption. 
    --- assumption.
    --- assumption.
    -- bdestruct (ltb k0 k). 
    --- (* HELPER LEMMA - case 2 *)
    apply balance_BST. 
    ---- assumption.
    ---- (* HELPER LEMMA - case 3 (non-generalized) *)
    apply insP. assumption. lia.
    ---- assumption.
    ---- assumption.
    --- assert (Abs k0 = Abs k). lia.
    apply ST_T. rewrite H5 in H. assumption. rewrite H5 in H0. assumption. assumption. assumption.
Qed.

Lemma make_black_BST {V} : forall (t : @tree V), BST t -> BST (make_black t).
Proof.
    intros. induction t. simpl. assumption.
    simpl. inversion H. constructor. assumption. assumption. assumption. assumption.
Qed.

Theorem insert_BST {V} : forall (t : @tree V) v k, BST t -> BST (insert k v t).
Proof.
    intros. destruct t.
    - unfold insert. simpl. constructor. simpl; auto. simpl; auto. assumption. assumption.
    - unfold insert. 
    (* HELPER LEMMA - case 2  *)
    apply make_black_BST. 
    (* HELPER LEMMA - case 3 (generalized) *)
    apply ins_BST. assumption.
Qed. 

Lemma elements_trP {V}: forall (P : key -> V -> Prop) (t : tree) (l : list (key * V)),
    ForallT P t -> Forall (uncurry P) l -> Forall (uncurry P) (elements_tr t l).
Proof.
    induction t.
    - intros. simpl. assumption.
    - intros. simpl. inversion H. apply IHt1. inversion H2. assumption.
    (* HELPER LEMMA - case 2 *)
    apply Forall_cons. assumption. apply IHt2. inversion H2. assumption. assumption.
Qed.

Lemma elementsP {V} : forall (P : key -> V -> Prop) (t : tree),
    ForallT P t -> Forall (uncurry P) (elements t).
Proof.
    intros. unfold elements. 
    (* HELPER LEMMA - case 2 *)
    apply elements_trP. assumption. constructor.
Qed.

(* ###################################################################### *)

Lemma lookup_empty {V} : forall k (default : V), lookup default k empty_tree = default.
Proof. auto. Qed.

Lemma ForallT_greater_default {V} : forall (default : V) t k,
    ForallT (fun k' _ => Abs k' > Abs k) t  -> lookup default k t = default.
Proof.
    intros. induction t.
    - simpl. auto.
    - simpl. inversion H. inversion H1. bdestruct (ltb k k0). apply IHt1. assumption. bdestruct (ltb k0 k). apply IHt2. assumption. lia.
Qed.

Lemma ForallT_less_default {V} : forall (default : V) t k,
    ForallT (fun k' _ => Abs k' < Abs k) t  -> lookup default k t = default.
Proof.
    intros. induction t.
    - simpl. auto.
    - simpl. inversion H. inversion H1. bdestruct (ltb k k0). apply IHt1. assumption. bdestruct (ltb k0 k). apply IHt2. assumption. lia.
Qed.

Lemma ltb_lt_equal: forall x y, ltb x y = (Abs x <? Abs y).
Proof. intros. bdestruct (ltb x y). lia. lia. Qed.

Lemma ltb_gt_equal: forall x y, ltb x y = (Abs y >? Abs x).
Proof. intros. bdestruct (ltb x y). lia. lia. Qed.

Lemma antisym : forall (m n : Z), m < n -> ~ (n < m).
Proof.
    intros. unfold not. intros. assert (Contra: n < n). transitivity m. auto. auto. apply Z.lt_irrefl in Contra. contradiction.
Qed.

Lemma balance_lookup {V}: forall (default : V) (c : color) (k k' : key) (v : V) (l r : tree),
    BST l ->
    BST r ->
    ForallT (fun k' _ => Abs k' < Abs k) l ->
    ForallT (fun k' _ => Abs k' > Abs k) r ->
    lookup default k' (balance c l k v r) =
    if Abs k' <? Abs k
    then lookup default k' l
    else if Abs k' >? Abs k
            then lookup default k' r
            else v.
Proof.
    intros. unfold balance. induction l. Admitted.
    (* repeat (
    match goal with
    |  H: ForallT _ (T _ _ _ _ _) |- _ => destruct H as [? [? ?] ]
    |  H: BST (T _ _ _ _ _) |- _ => inv H
    | |- lookup _  (match ?c with Red => _ | Black => _ end) = _ => destruct c
    | |- lookup _  (match ?t with E => _ | T _ _ _ _ _ => _ end) = _ => destruct t 
    end; (simpl; auto)
    ).

    - rewrite ltb_lt_equal. rewrite ltb_gt_equal. reflexivity.
    - rewrite ltb_lt_equal. rewrite ltb_gt_equal. reflexivity.
    - rewrite ltb_lt_equal. rewrite ltb_gt_equal. reflexivity.
    - rewrite ltb_lt_equal. rewrite ltb_lt_equal. bdestruct (Abs k' <? Abs k). bdestruct (Abs k' <? Abs k0). reflexivity. bdestruct (ltb k0 k'). bdestruct (ltb k' k1). lia. lia. lia. bdestruct (Abs k' <? Abs k0). rewrite ltb_gt_equal. reflexivity. bdestruct (ltb k0 k'). bdestruct (Abs k' >? Abs k). reflexivity. lia. bdestruct (Abs k' >? Abs k). reflexivity. lia.
    - rewrite ltb_lt_equal. rewrite ltb_gt_equal. reflexivity.
    - bdestruct (ltb k' k1). rewrite ltb_lt_equal. rewrite ltb_gt_equal. bdestruct (ltb k' k0). reflexivity. bdestruct (ltb k0 k').  lia. lia. rewrite ltb_lt_equal. rewrite ltb_lt_equal. bdestruct (Abs k' <? Abs k). lia. bdestruct (Abs k' >? Abs k). bdestruct (Abs k1 <? Abs k'). reflexivity. bdestruct (Abs k' <? Abs k0). reflexivity. lia. lia.
    - rewrite ltb_lt_equal. rewrite ltb_gt_equal. reflexivity.
    - bdestruct (ltb k' k0). rewrite ltb_lt_equal. rewrite ltb_gt_equal. reflexivity. bdestruct (Abs k' <? Abs k). lia. bdestruct (Abs k' >? Abs k). reflexivity. lia.
    - rewrite ltb_lt_equal. rewrite ltb_gt_equal. reflexivity.
    - rewrite ltb_lt_equal. rewrite ltb_gt_equal. reflexivity.
    - (* One case left but it's a monster. *) 
    destruct c.
    + simpl. rewrite <- ltb_lt_equal. bdestruct (ltb k' k).
    ++ reflexivity.
    ++ rewrite ltb_gt_equal. reflexivity.
    + repeat (
        match goal with
        | |- lookup _  (match ?c with Red => _ | Black => _ end) = _ => destruct c
        | |- lookup _  (match ?t with E => _ | T _ _ _ _ _ => _ end) = _ => destruct t 
        end; (simpl; auto)). 
    all: simpl; try rewrite <- ltb_lt_equal; try rewrite <- ltb_gt_equal; try reflexivity.
    *  bdestruct (ltb k' k1).
    ** reflexivity.
    ** bdestruct (ltb k' k).
    *** bdestruct (ltb k1 k').
    **** bdestruct (ltb k' k2).
    ***** bdestruct (ltb k' k0).
    Admitted. *)
    (* SHOULD TRY TO MAKE THIS INTO A LEMMA TO REUSE *)
    (* Admitted for now... probably not necessary at the moment for analysis *)
    

    (* all: try bdestruct (ltb k' k); simpl; try reflexivity.
    all: try bdestruct (ltb k' k0); simpl; try reflexivity.
    all: try bdestruct (ltb k' k1); simpl; try reflexivity.
    all: try bdestruct (ltb k' k2); simpl; try reflexivity.
    all: try bdestruct (ltb k1 k'); simpl; try reflexivity.
    all: try bdestruct (ltb k2 k'); simpl; try reflexivity.
    all: try bdestruct (ltb k0 k'); simpl; try reflexivity.
    all: try bdestruct (ltb k k'); simpl; try reflexivity.
    all: simpl; try contradiction; try reflexivity. *)

Lemma lookup_ins_eq {V}: forall (default : V) (t : tree) (k : key) (v : V),
    BST t -> lookup default k (ins k v t) = v.
Proof.
    intros. induction H.
    - simpl. bdestruct (ltb k k). lia. reflexivity.
    - simpl. bdestruct (ltb k k0).
    + (* HELPER LEMMA - case 2 *)
     rewrite balance_lookup. rewrite IHBST1. bdestruct (Abs k <? Abs k0). reflexivity. lia. 
     (* HELPER LEMMA - case 3 (non-generalized) *)
     apply ins_BST. assumption. assumption. 
     (* HELPER LEMMA - case 3 (non-generalized) *)
     apply insP. assumption. assumption. assumption.
    + bdestruct (ltb k0 k).
        * (* HELPER LEMMA - case 2 *)
         rewrite balance_lookup. rewrite IHBST2. bdestruct (Abs k >? Abs k0). bdestruct (Abs k <? Abs k0). lia. reflexivity. lia. assumption.
         (* HELPER LEMMA - case 3 (non-generalized) *)
         apply ins_BST. assumption. assumption.
        (* HELPER LEMMA - case 3 (non-generalized) *)
         apply insP. assumption. lia.
        * simpl. bdestruct (ltb k k). lia. reflexivity.
Qed.

Theorem lookup_ins_neq {V}: forall (default : V) (t : tree) (k k' : key) (v : V),
    BST t -> k <> k' -> lookup default k' (ins k v t) = lookup default k' t.
Proof.
    intros. induction H.
    - simpl. bdestruct (ltb k' k). reflexivity. bdestruct (ltb k k'). reflexivity. assert (Abs k = Abs k'). lia. apply Abs_inj in H2. contradiction.
    - simpl. bdestruct (ltb k k0).
    + (* HELPER LEMMA - case 2 *)
    rewrite balance_lookup. bdestruct (Abs k' <? Abs k0). rewrite IHBST1. bdestruct (ltb k' k0). reflexivity. lia. bdestruct (ltb k' k0). lia. rewrite ltb_gt_equal. reflexivity. 
    (* HELPER LEMMA - case 3 (non-generalized) *)
    apply ins_BST. assumption. assumption. 
    (* HELPER LEMMA - case 3 (non-generalized) *)
    apply insP. assumption. lia. assumption.
    + bdestruct (ltb k0 k). 
        * (* HELPER LEMMA - case 2 *)
        rewrite balance_lookup. bdestruct (Abs k' >? Abs k0). rewrite IHBST2. bdestruct (ltb k' k0). lia. bdestruct (Abs k' <? Abs k0). lia. bdestruct (ltb k0 k'). reflexivity. lia. bdestruct (ltb k0 k'). rewrite ltb_lt_equal. bdestruct (Abs k' <? Abs k0). reflexivity. lia. rewrite ltb_lt_equal. reflexivity. assumption.
        (* HELPER LEMMA - case 3 (non-generalized) *)
        apply ins_BST. assumption. assumption. 
        (* HELPER LEMMA - case 3 (non-generalized) *)
        apply insP. assumption. lia.
        * simpl. assert (Abs k0 = Abs k). lia. apply Abs_inj in H6. rewrite H6. bdestruct (ltb k' k). reflexivity. bdestruct (ltb k k'). reflexivity.  assert (Abs k = Abs k'). lia. apply Abs_inj in H9. contradiction.
Qed.

Lemma lookup_make_black {V}: forall (default : V) (t : tree) (k : key), lookup default k (make_black t) = lookup default k t.
Proof. intros. destruct t; simpl; auto. Qed.

Theorem lookup_insert_eq {V}: forall (default : V) (t : tree) (k : key) (v : V),
    BST t -> lookup default k (insert k v t) = v.
Proof.
    intros. unfold insert. 
    (* HELPER LEMMA - case 2 (unknown) *)
    rewrite lookup_make_black. 
    (* HELPER LEMMA - case 3 (non-generalized) *)
    apply lookup_ins_eq. 
    assumption.
Qed.

Theorem lookup_insert_neq {V}: forall (default : V) (t : tree) (k k' : key) (v : V),
    BST t -> k <> k' -> lookup default k' (insert k v t) = lookup default k' t.
Proof.
    intros. unfold insert. 
    (* HELPER LEMMA - case 2 (unknown) *)
    rewrite lookup_make_black. 
    (* HELPER LEMMA - case 3 (non-generalized) *)
    apply lookup_ins_neq. assumption. assumption.
Qed.

Lemma RB_blacken_parent {V}: forall (t : @tree V) (n : nat), RB t Red n -> RB t Black n.
Proof.
    intros. inversion H. constructor.
    constructor. assumption. assumption.
Qed.

Lemma RB_blacken_root {V}: forall (t : @tree V) (n : nat),
    RB t Black n -> exists (n' : nat), RB (make_black t) Red n'.
Proof.
    intros. inversion H.
    - exists O. simpl. constructor.
    - simpl. exists (S n). constructor. 
    (* HELPER LEMMA - case 3 (non-generalized) *)
    apply RB_blacken_parent. assumption. 
    (* HELPER LEMMA - case 3 (non-generalized) *)
    apply RB_blacken_parent. assumption.
    - simpl. exists (S n0). constructor. assumption. assumption.
Qed.

Lemma helper1 {V} : forall n, @NearlyRB V E n -> @RB V E Black n.
Proof. intros. inversion H. Qed.

Lemma helper2 {V} : forall n, @NearlyRB V E n -> @RB V E Red n.
Proof. intros. inversion H. Qed.

Lemma helper3 {V}: forall n k (v : V) t k' v' t', RB (T Red E k v (T Red t k' v' t')) Black n -> RB t Black n.
Proof. intros. inversion H. inversion H6. Qed.

Lemma helper4 {V} : forall n t, @NearlyRB V E n -> @RB V t Black n.
Proof. intros. inversion H. Qed.

Lemma helper5 {V} : forall t2_1_1 k2 (v2 : V) t2_1_2 t2_2_1 k3 v3 t2_2_2 n0 k1 v1, 
 RB (T Red (T Black t2_1_1 k2 v2 t2_1_2) k1 v1 (T Red t2_2_1 k3 v3 t2_2_2)) Black n0
 -> RB (T Black t2_1_1 k2 v2 t2_1_2) Black n0.
Proof. intros. inversion H. inversion H5. constructor. auto. auto. Qed.

Lemma helper6 {V} : forall n, @RB V E Black n -> @RB V E Red n.
Proof. intros. inversion H. constructor. Qed.

Lemma helper7 {V} : forall k (v : V) n, RB (T Red E k v E) Black n -> @RB V E Red n.
Proof. intros. inversion H. auto. Qed.

Lemma helper8 {V} : forall k (v : V) n, NearlyRB (T Red E k v E) n -> RB (T Red E k v E) Black n.
Proof. intros. inversion H. constructor. apply helper6. assumption. apply helper6. assumption. Qed.

Lemma helper9 {V} : forall k (v : V) t k' v' t' n t'', RB (T Red t'' k v (T Red t k' v' t')) Black n -> RB t Black n.
Proof. intros. inversion H. inversion H6. Qed.

Lemma helper10 {V} : forall k (v : V) t k' v' t' n t'', RB (T Red t'' k v (T Red t k' v' t')) Black n -> RB t' Black n.
Proof. intros. inversion H. inversion H6. Qed.

Lemma helper11 {V} : forall k (v : V) t k' v' t' n t'', RB (T Red (T Red t k' v' t') k v t'') Black n -> RB t Black n.
Proof. intros. inversion H. inversion H5. Qed.

Lemma helper12 {V} : forall k (v : V) t k' v' t' n t'', RB (T Red (T Red t k' v' t') k v t'') Black n -> RB t' Black n.
Proof. intros. inversion H. inversion H5. Qed.

Lemma helper13 {V} : forall k (v : V) t n t'', RB (T Red t k v t'') Black n -> RB t'' Black n.
Proof. intros. inversion H. apply RB_blacken_parent. assumption. Qed.

Lemma helper14 {V} : forall k (v : V) t n t'', RB (T Red t k v t'') Black n -> RB t Black n.
Proof. intros. inversion H. apply RB_blacken_parent. assumption. Qed.

Lemma ins_RB {V} : forall (k : key) (v : V) (t : tree) (n : nat),
    (RB t Black n -> NearlyRB (ins k v t) n) /\ (RB t Red n -> RB (ins k v t) Black n).
Proof.
    induction t; intro n; simpl; split; intros; inversion H; repeat constructor; auto.
    * destruct (IHt1 n); clear IHt1.
    destruct (IHt2 n); clear IHt2.
    specialize (H9 H6).
    specialize (H11 H7).
    clear H H1.
    unfold balance.
    destruct (ltb k k0). constructor. assumption. 
    (* HELPER LEMMA - case 3 (non-generalized) *)
    apply RB_blacken_parent. assumption.
    destruct (ltb k0 k). constructor. 
    (* HELPER LEMMA - case 3 (non-generalized) *)
    apply RB_blacken_parent. assumption. assumption.
    constructor. 
    (* HELPER LEMMA - case 3 (non-generalized) *)
    apply RB_blacken_parent. assumption. 
    (* HELPER LEMMA - case 3 (non-generalized) *)
    apply RB_blacken_parent. assumption.
    * destruct (IHt1 n0); clear IHt1.
    destruct (IHt2 n0); clear IHt2.
    specialize (H9 H7).
    specialize (H11 H8). 
    destruct (ltb k k0).
    - unfold balance.
    Admitted.
    (* repeat (match goal with
    |  |- NearlyRB  (match ?c with Red => _ | Black => _ end) _ => destruct c 
    |  |- NearlyRB  (match ?c with E => _ | T _ _ _ _ _=> _ end) _ => destruct c end).
    all: try constructor; auto.
    all: try (match goal with 
    | |- RB (T Black _ _ _ _) Black (S _) => constructor
    | |- RB (T Red _ _ _ _) Black _ => constructor end).
    all: try (match goal with 
    | |- RB (T Black _ _ _ _) Black _ => eapply helper5; eassumption
    | |- RB (T _ _ _ _ _) Black _ => auto
    | |- RB _ Black _ => apply helper4; assumption end).
    all: try (apply helper6; assumption).
    all: try (inversion H; assumption).
    all: try (eapply helper7; eassumption).
    all: try (apply helper8; assumption).
    all: try (eapply helper9; eassumption).
    all: try (eapply helper10; eassumption).
    all: try (inversion H; apply helper6; assumption).
    all: try (eapply helper11; eassumption).
    all: try (eapply helper12; eassumption).
    all: try (eapply helper13; eassumption). 
    Admitted. *)
    (* Can keep going to general cases and making helper lemmas for them *)


Corollary ins_red {V}: forall (t : tree) (k : key) (v : V) (n : nat),
    (RB t Red n -> RB (ins k v t) Black n).
Proof.
    intros. 
    (* HELPER LEMMA - case 3 (non-generalized) *)
    apply ins_RB. assumption.
Qed.

Lemma insert_RB {V}: forall (t : tree) (k : key) (v : V) (n : nat),
    RB t Red n -> exists (n' : nat), RB (insert k v t) Red n'.
Proof.
    intros. unfold insert. 
    (* HELPER LEMMA - case 3 (non-generalized) --> includes existential quantifier *)
    eapply RB_blacken_root. 
    (* HELPER LEMMA - case 3 (non-generalized) --> includes existential quantifier *)
    apply ins_red. eapply H.
Qed.

Lemma redblack_height {V} : forall (t : @tree V) c n,
RB t c n -> 
    match c with
    | Red => (height t <= 2 * n)%nat
    | Black => (height t <= 2 * n + 1)%nat
    end.
Proof.
    intros. induction H.
    - destruct c. simpl. lia. simpl. lia.
    - simpl. lia.
    - destruct c. simpl. lia. simpl. lia.
Qed.

Lemma redblack_mindepth {V} : forall (t : @tree V) c n,
    RB t c n ->
    (n <= mindepth t)%nat.
Proof.
    intros. induction H.
    - simpl. lia.
    - simpl. lia.
    - simpl. lia.
Qed.

Lemma redblack_balanced {V} : forall (t : @tree V) c n,
    RB t c n ->
    (height t <= 2 * mindepth t + 1)%nat.
Proof.
    intros. 
    pose proof (redblack_height t c n H). 
    pose proof (redblack_mindepth t c n H). destruct c. lia. lia.
Qed.
