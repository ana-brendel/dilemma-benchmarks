Require Import vfa_perm_benchmarks.Definitions.
From vfa_perm_benchmarks Require Import Decide.

(* These specify the libraries of functions that should be considered during synthesis that 
    are not defined within the above libraries. *)
Require Import Coq.Lists.List.
Require Import Coq.Sorting.Permutation. 


Theorem maybe_swap_idempotent: forall al, maybe_swap (maybe_swap al) = maybe_swap al.
Proof.
  intros [ | a [ | b al]]; simpl; try reflexivity.
  bdestruct (a >? b); simpl.
  - bdestruct (b >? a); simpl. + lia. + reflexivity.
  - bdestruct (a >? b); simpl. + lia. + reflexivity.
Qed.

Example butterfly: forall b u t e r f l y : nat, Permutation ([b;u;t;t;e;r]++[f;l;y]) ([f;l;u;t;t;e;r]++[b;y]).
Proof.
  intros.
  change [b;u;t;t;e;r] with ([b]++[u;t;t;e;r]).
  change [f;l;u;t;t;e;r] with ([f;l]++[u;t;t;e;r]).
  remember [u;t;t;e;r] as utter. clear Hequtter.
  change [f;l;y] with ([f;l]++[y]).
  remember [f;l] as fl. clear Heqfl.
  replace ((fl ++ utter) ++ [b;y]) with (fl ++ utter ++ [b;y]).
  * apply perm_trans with (fl ++ [y] ++ ([b] ++ utter)).
  - replace (fl ++ [y] ++ [b] ++ utter) with ((fl ++ [y]) ++ [b] ++ utter).
    + apply Permutation_app_comm.
    + rewrite <- app_assoc. reflexivity.
  - apply Permutation_app_head.
    apply perm_trans with (utter ++ [y] ++ [b]).
    + replace ([y] ++ [b] ++ utter) with (([y] ++ [b]) ++ utter).
      ++ apply Permutation_app_comm.
      ++ rewrite app_assoc. reflexivity.
    + apply Permutation_app_head.
      apply perm_swap.
  * apply app_assoc.
Qed.

Example permut_example: forall (a b: list nat), Permutation (5 :: 6 :: a ++ b) ((5 :: b) ++ (6 :: a ++ [])).
Proof.
  intros. simpl. apply perm_skip.
  apply perm_trans with (l' := [] ++ (b ++ 6 :: a)).
  - simpl. apply Permutation_app_comm with (l := 6 :: a).
  - simpl. apply Permutation_app_head. apply perm_skip. 
  apply Permutation_app_comm with (l := []).
Qed.

Example not_a_permutation: ~ Permutation [1;1] [1;2].
Proof. 
  intro. 
  apply Permutation_cons_inv in H.
  apply Permutation_length_1_inv in H. 
  inversion H.
Qed.

Theorem maybe_swap_perm: forall al, Permutation al (maybe_swap al).
Proof.
  unfold maybe_swap.
  destruct al as [ | a [ | b al]].
  - simpl. apply perm_nil. - reflexivity.
  - bdestruct (a >? b). + apply perm_swap. + reflexivity.
Qed.

Theorem maybe_swap_correct: forall al, Permutation al (maybe_swap al) /\ first_le_second (maybe_swap al).
Proof.
  intros. split.
  - (* HELPER LEMMA $ maybe_swap_correct_by_maybe_swap_perm $ *)
  apply maybe_swap_perm.
  - unfold maybe_swap.
    destruct al as [ | a [ | b al]]; simpl; auto.
    bdestruct (a >? b); simpl; lia.
Qed.

Theorem Forall_perm: forall {A} (f: A -> Prop) al bl, Permutation al bl -> Forall f al -> Forall f bl.
Proof. intros.
  induction H.
  * assumption.
  * inversion H0; subst. auto. 
  * inversion H0; subst. inversion H3; subst. auto.
  * auto.
Qed.

