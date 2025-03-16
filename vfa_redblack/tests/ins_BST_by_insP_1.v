From LFindToo Require Import LFindToo.

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
findlemma. Admitted.
(*
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
*)