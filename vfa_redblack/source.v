Set Warnings "-notation-overridden,-parsing,-deprecated-hint-without-locality".

From LFindToo Require Import LFindToo.

(* These specify the libraries of functions that should be considered during synthesis that 
    are not defined within the above libraries. *)
Require Import Coq.Lists.List.

From Coq Require Import micromega.Lia.

Require Import vfa_redblack_benchmarks.Definitions.
From vfa_redblack_benchmarks Require Import Decide.

Lemma ins_not_E : forall x vx t, ins x vx t <> E.
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

Lemma empty_tree_BST : BST (empty_tree).
Proof. unfold empty_tree. constructor. Qed.

Lemma ForallT_imp : forall (P Q : nat -> value -> Prop) t, ForallT P t -> (forall k v, P k v -> Q k v) -> ForallT Q t.
Proof. induction t; intros. - auto. - destruct H as [? [? ?]]. repeat split; auto. Qed.

Lemma ForallT_greater : forall (t : tree) k k0, ForallT (fun k' _ => k' > k) t  -> k > k0 -> ForallT (fun k' _ => k' > k0) t.
Proof.
    intros. 
    (* HELPER LEMMA $ ForallT_greater_by_ForallT_imp $ *)
    eapply ForallT_imp; eauto.
    intros. simpl in H1. lia.
Qed.

Lemma ForallT_less : forall (t : tree) k k0, ForallT (fun k' _ => k' < k) t  -> k < k0 -> ForallT (fun k' _ => k' < k0) t.
Proof.
    intros. 
    (* HELPER LEMMA $ ForallT_less_by_ForallT_imp $ *)
    eapply ForallT_imp; eauto.
    intros. simpl in H1. lia.
Qed.

Lemma balance_BST : forall (c : color) (l : tree) (k : nat) (v : value) (r : tree),
    ForallT (fun k' _ => k' < k) l -> ForallT (fun k' _ => k' > k) r -> BST l -> BST r -> BST (balance c l k v r).
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

Lemma balanceP : forall (P : nat -> value -> Prop) (c : color) (l r : tree) (k : nat) (v : value),
    ForallT P l -> ForallT P r -> P k v -> ForallT P (balance c l k v r).
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

Lemma insP : forall (P : nat -> value -> Prop) (t : tree) (k : nat) (v : value), ForallT P t -> P k v -> ForallT P (ins k v t).
Proof. Admitted.

Lemma insP_fixed : forall (t : tree) (k : nat) (v : value), ForallT (fun x _ => 0 < x) t -> (fun x _ => 0 < x) k v -> ForallT (fun x _ => 0 < x) (ins k v t).
Proof.
    intros. induction t.
    - simpl. repeat split; auto.
    - simpl. destruct H as [? [? ?]]. 
    destruct (k <? n). 
    (* HELPER LEMMA $ insP_by_balanceP_1 $ *)
    + apply balanceP. auto. assumption. assumption.
    + destruct (n <? k). 
    ++ (* HELPER LEMMA $ insP_by_balanceP_2 $ *)
    apply balanceP. assumption. auto. assumption.
    ++ simpl. repeat split; auto.
Qed.

Lemma ins_BST : forall (t : tree) (k : nat) (v : value), BST t -> BST (ins k v t).
Proof.
    intros. induction H.
    - simpl. constructor. repeat split; auto. repeat split; auto. constructor. constructor.
    - simpl. bdestruct (k <? k0). 
    -- (* HELPER LEMMA $ ins_BST_by_balance_BST_1 $ *)
    apply balance_BST.
    --- (* HELPER LEMMA $ ins_BST_by_insP_1 $ *)
    apply insP. assumption. assumption.
    --- assumption. 
    --- assumption.
    --- assumption.
    -- bdestruct (k0 <? k). 
    --- (* HELPER LEMMA $ ins_BST_by_balance_BST_2 $ *)
    apply balance_BST. 
    ---- assumption.
    ---- (* HELPER LEMMA $ ins_BST_by_insP_2 $ *)
    apply insP. assumption. lia.
    ---- assumption.
    ---- assumption.
    --- assert (k0 = k). lia.
    apply BST_T. rewrite H5 in H. assumption. rewrite H5 in H0. assumption. assumption. assumption.
Qed.

Lemma make_black_BST : forall (t : tree), BST t -> BST (make_black t).
Proof. intros. induction t. simpl. assumption. simpl. inversion H. constructor. assumption. assumption. assumption. assumption. Qed.

Theorem insert_BST : forall (t : tree) v k, BST t -> BST (insert k v t).
Proof.
    intros. destruct t.
    - unfold insert. simpl. constructor. simpl; auto. simpl; auto. assumption. assumption.
    - unfold insert. 
    (* HELPER LEMMA $ insert_BST_by_make_black_BST $ *)
    apply make_black_BST. 
    (* HELPER LEMMA $ insert_BST_by_ins_BST $ *)
    apply ins_BST. assumption.
Qed. 

Lemma elements_trP : forall (P : nat -> value -> Prop) (t : tree) (l : list (nat * value)),
    ForallT P t -> Forall (uncurry P) l -> Forall (uncurry P) (elements_tr t l). 
Proof. Admitted.

Lemma elementsP : forall (P : nat -> value -> Prop) (t : tree),
    ForallT P t -> Forall (uncurry P) (elements t).
Proof. Admitted.

Lemma elementsP_fixed : forall (t : tree), ForallT (fun x _ => 2 < x) t -> Forall (uncurry (fun x _ => 2 < x)) (elements t).
Proof.
    intros. unfold elements. 
    (* HELPER LEMMA $ elementsP_by_elements_trP $ *)
    apply elements_trP. assumption. constructor.
Qed.

Lemma ForallT_greater_default : forall default t k,
    ForallT (fun k' _ => k' > k) t  -> lookup default k t = default.
Proof.
    intros. induction t.
    - simpl. auto.
    - simpl. inversion H. inversion H1. bdestruct (k <? n). apply IHt1. 
    assumption. bdestruct (n <? k). apply IHt2. assumption. lia.
Qed.

Lemma ForallT_less_default : forall default t k,
    ForallT (fun k' _ => k' < k) t  -> lookup default k t = default.
Proof.
    intros. induction t.
    - simpl. auto.
    - simpl. inversion H. inversion H1. bdestruct (k <? n). apply IHt1. 
    assumption. bdestruct (n <? k). apply IHt2. assumption. lia.
Qed.

Lemma balance_lookup : forall default (c : color) (k k' : nat) (v : value) (l r : tree),
    BST l -> BST r -> ForallT (fun k' _ => k' < k) l -> ForallT (fun k' _ => k' > k) r ->
    lookup default k' (balance c l k v r) = if k' <? k then lookup default k' l else if k <? k' then lookup default k' r else v.
Proof.
    intros. unfold balance. induction l. Admitted.

Lemma lookup_ins_eq : forall (default : value) (t : tree) (k : nat) (v : value), BST t -> lookup default k (ins k v t) = v.
Proof.
    intros. induction H.
    - simpl. bdall.
    - simpl. bdestruct (k <? k0).
    + (* HELPER LEMMA $ lookup_ins_eq_by_balance_lookup_1 $ *)
     rewrite balance_lookup. rewrite IHBST1. bdestruct (k <? k0). reflexivity. lia. 
     (* HELPER LEMMA $ lookup_ins_eq_by_ins_BST_1 $ *)
     apply ins_BST. assumption. assumption. 
     (* HELPER LEMMA $ lookup_ins_eq_by_insP_1 $ *)
     apply insP. assumption. assumption. assumption.
    + bdestruct (k0 <? k).
    * (* HELPER LEMMA $ lookup_ins_eq_by_balance_lookup_2 $ *)
        rewrite balance_lookup. rewrite IHBST2. bdestruct (k <? k0). lia. bdall. assumption.
        (* HELPER LEMMA $ lookup_ins_eq_by_ins_BST_2 $ *)
        apply ins_BST. assumption. assumption.
    (* HELPER LEMMA $ lookup_ins_eq_by_insP_2 $ *)
        apply insP. assumption. lia.
    * bdall.
Qed.

Theorem lookup_ins_neq : forall (default : value) (t : tree) (k k' : nat) (v : value), BST t -> k <> k' -> lookup default k' (ins k v t) = lookup default k' t.
Proof.
    intros. induction H.
    - simpl. bdall.
    - simpl. bdestruct (k <? k0).
    + (* HELPER LEMMA $ lookup_ins_neq_by_balance_lookup_1 $ *)
    rewrite balance_lookup. bdestruct (k' <? k0). rewrite IHBST1. reflexivity. reflexivity. 
    (* HELPER LEMMA $ lookup_ins_neq_by_ins_BST_1 $ *)
    apply ins_BST. assumption. assumption. 
    (* HELPER LEMMA $ lookup_ins_neq_by_insP_1 $ *)
    apply insP. assumption. lia. assumption.
    + bdestruct (k0 <? k). 
    * (* HELPER LEMMA $ lookup_ins_neq_by_balance_lookup_2 $ *) 
    rewrite balance_lookup. bdestruct (k0 <? k'). rewrite IHBST2. reflexivity. reflexivity.  assumption. 
    (* HELPER LEMMA $ lookup_ins_neq_by_ins_BST_2 $ *)
    apply ins_BST. assumption. assumption. 
    (* HELPER LEMMA $ lookup_ins_neq_by_insP_2 $ *)
    apply insP. assumption. lia.
    * simpl. bdall.
Qed.

Lemma lookup_make_black : forall (default : value) (t : tree) (k : nat), lookup default k (make_black t) = lookup default k t.
Proof. intros. destruct t; simpl; auto. Qed.

Theorem lookup_insert_eq : forall (default : value) (t : tree) (k : nat) (v : value), BST t -> lookup default k (insert k v t) = v.
Proof.
    intros. unfold insert. 
    (* HELPER LEMMA $ lookup_insert_eq_by_lookup_make_black $ *)
    rewrite lookup_make_black. 
    (* HELPER LEMMA $ lookup_insert_eq_by_lookup_ins_eq $ *)
    apply lookup_ins_eq. 
    assumption.
Qed.

Theorem lookup_insert_neq : forall (default : value) (t : tree) (k k' : nat) (v : value), BST t -> k <> k' -> lookup default k' (insert k v t) = lookup default k' t.
Proof.
    intros. unfold insert. 
    (* HELPER LEMMA $ lookup_insert_neq_by_lookup_make_black $ *)
    rewrite lookup_make_black. 
    (* HELPER LEMMA $ lookup_insert_neq_by_lookup_ins_eq $ *)
    apply lookup_ins_neq. assumption. assumption.
Qed.

Lemma RB_blacken_parent : forall (t : tree) (n : nat), RB t Red n -> RB t Black n.
Proof. intros. inversion H. constructor. constructor. assumption. assumption. Qed.

Lemma RB_blacken_root : forall (t : tree) (n : nat), RB t Black n -> exists (n' : nat), RB (make_black t) Red n'.
Proof.
    intros. inversion H.
    - exists O. simpl. constructor.
    - simpl. exists (S n). constructor. 
    (* HELPER LEMMA $ RB_blacken_root_by_RB_blacken_parent_1 $ *)
    apply RB_blacken_parent. assumption. 
    (* HELPER LEMMA $ RB_blacken_root_by_RB_blacken_parent_2 $ *)
    apply RB_blacken_parent. assumption.
    - simpl. exists (S n0). constructor. assumption. assumption.
Qed.

Lemma ins_RB : forall (k : nat) (v : value) (t : tree) (n : nat), (RB t Black n -> NearlyRB (ins k v t) n) /\ (RB t Red n -> RB (ins k v t) Black n).
Proof. Admitted.

Lemma ins_red : forall (t : tree) (k : nat) (v : value) (n : nat), (RB t Red n -> RB (ins k v t) Black n).
Proof.
    intros. 
    (* HELPER LEMMA $ ins_red_by_ins_RB $ *)
    apply ins_RB. assumption.
Qed.

Lemma insert_RB : forall (t : tree) (k : nat) (v : value) (n : nat), RB t Red n -> exists (n' : nat), RB (insert k v t) Red n'.
Proof.
    intros. unfold insert.
    (* HELPER LEMMA $ insert_RB_by_RB_blacken_root $ *)
    apply RB_blacken_root with (n := n).
    (* HELPER LEMMA $ insert_RB_by_ins_red $ *)
    apply ins_red. eapply H.
Qed.

Lemma redblack_height : forall (t : tree) c n, RB t c n -> 
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

Lemma redblack_mindepth : forall (t : tree) c n, RB t c n -> (n <= mindepth t)%nat.
Proof. intros. induction H. - simpl. lia. - simpl. lia. - simpl. lia. Qed.

Lemma redblack_balanced : forall (t : tree) c n, RB t c n -> (height t <= 2 * mindepth t + 1)%nat.
Proof.
    intros. 
    pose proof (redblack_height t c n H). 
    pose proof (redblack_mindepth t c n H). destruct c. lia. lia.
Qed.
