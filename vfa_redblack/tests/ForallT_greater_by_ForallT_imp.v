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
findlemma. Admitted.
(*
    eapply ForallT_imp; eauto.
    intros. simpl in H1. lia.
Qed.
*)