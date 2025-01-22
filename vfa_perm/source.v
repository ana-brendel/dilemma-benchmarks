Require Import vfa_perm_benchmarks.Definitions.
Require Import vfa_perm_benchmarks.Decide.

(* These specify the libraries of functions that should be considered during synthesis that 
    are not defined within the above libraries. *)
Require Import Coq.Lists.List.
Require Import Coq.Sorting.Permutation. 

(** ** Finishing the [maybe_swap] Proof *)

Theorem maybe_swap_idempotent: forall al,
    maybe_swap (maybe_swap al) = maybe_swap al.
Proof.
  intros [ | a [ | b al]]; simpl; try reflexivity.
  bdestruct (a >? b); simpl.
  (** Note how [a > b] is a hypothesis, rather than [a >? b = true]. *)
  - bdestruct (b >? a); simpl.
    + (** [lia] can take care of the contradictory propositional inequalities. *)
      lia.
    + reflexivity.
  - bdestruct (a >? b); simpl.
    + lia.
    + reflexivity.
Qed.

Example butterfly: forall b u t e r f l y : nat,
  Permutation ([b;u;t;t;e;r]++[f;l;y]) ([f;l;u;t;t;e;r]++[b;y]).
Proof.
  intros.
  change [b;u;t;t;e;r] with ([b]++[u;t;t;e;r]).
  change [f;l;u;t;t;e;r] with ([f;l]++[u;t;t;e;r]).
  remember [u;t;t;e;r] as utter. clear Hequtter.
  change [f;l;y] with ([f;l]++[y]).
  remember [f;l] as fl. clear Heqfl.
  replace ((fl ++ utter) ++ [b;y]) with (fl ++ utter ++ [b;y])
    by apply app_assoc.
  apply perm_trans with (fl ++ [y] ++ ([b] ++ utter)).
  - replace (fl ++ [y] ++ [b] ++ utter) with ((fl ++ [y]) ++ [b] ++ utter).
    + apply Permutation_app_comm.
    + rewrite <- app_assoc. reflexivity.
  - apply Permutation_app_head.
    apply perm_trans with (utter ++ [y] ++ [b]).
    + replace ([y] ++ [b] ++ utter) with (([y] ++ [b]) ++ utter).
      * apply Permutation_app_comm.
      * rewrite app_assoc. reflexivity.
    + apply Permutation_app_head.
      apply perm_swap.
Qed.


Example permut_example: forall (a b: list nat),
  Permutation (5 :: 6 :: a ++ b) ((5 :: b) ++ (6 :: a ++ [])).
Proof.
(* FILL IN HERE *) Admitted.


Example not_a_permutation:
  ~ Permutation [1;1] [1;2].
Proof.
(* FILL IN HERE *) Admitted.

Theorem maybe_swap_perm: forall al,
  Permutation al (maybe_swap al).
Proof.
  unfold maybe_swap.
  destruct al as [ | a [ | b al]].
  - simpl. apply perm_nil.
  - apply Permutation_refl.
  - bdestruct (a >? b).
    + apply perm_swap.
    + apply Permutation_refl.
Qed.

Theorem maybe_swap_correct: forall al,
    Permutation al (maybe_swap al)
    /\ first_le_second (maybe_swap al).
Proof.
  intros. split.
  - apply maybe_swap_perm.
  - unfold maybe_swap.
    destruct al as [ | a [ | b al]]; simpl; auto.
    bdestruct (a >? b); simpl; lia.
Qed.

(* ################################################################# *)
(** * An Inversion Tactic *)

Theorem Forall_perm: forall {A} (f: A -> Prop) al bl,
  Permutation al bl ->
  Forall f al -> Forall f bl.
Proof.
  (* FILL IN HERE *) Admitted.

