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
findlemma. Admitted.
(*
    apply ForallT_insert. assumption. assumption. assumption. assumption. assumption. bdestruct (Nat.ltb x k). constructor. assumption. 
    (* HELPER LEMMA $ insert_BST_by_ForallT_insert_1 $ *)
findlemma. Admitted.
(*
    apply ForallT_insert. assumption. assumption. assumption. assumption. constructor.  assert (k=x). lia. rewrite H5. assumption. assert (k=x). lia. rewrite H5. assumption. assumption. assumption.
Qed.
*)