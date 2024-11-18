
Require Import vfa_sort_benchmarks.Definitions.
Require Import vfa_sort_benchmarks.Decide.

(* These specify the libraries of functions that should be considered during synthesis that 
    are not defined within the above libraries. *)
Require Import Coq.Lists.List.
Require Import Coq.Sorting.Permutation. 

Lemma insert_perm: forall x l, Permutation (x::l) (insert x l).
Proof.
(* FILL IN HERE *) Admitted.

Theorem sort_perm: forall l, Permutation l (sort l).
Proof.
(* FILL IN HERE *) Admitted.

Lemma insert_sorted:
  forall a l, sorted l -> sorted (insert a l).
Proof.
(* FILL IN HERE *) Admitted.

Theorem sort_sorted: forall l, sorted (sort l).
Proof.
(* FILL IN HERE *) Admitted.

Theorem insertion_sort_correct: is_a_sorting_algorithm sort.
Proof. split. apply sort_perm. apply sort_sorted. Qed.

Lemma sorted_sorted': forall al, sorted al -> sorted' al.
Proof.
(** Hint: Instead of doing induction on the list [al], do induction
    on the _sortedness_ of [al]. This proof is a bit tricky, so
    you may have to think about how to approach it, and try out
    one or two different ideas.*)

(* FILL IN HERE *) Admitted.

Lemma sorted'_sorted: forall al, sorted' al -> sorted al.

(** Here, you can't do induction on the sorted'-ness of the list,
    because [sorted'] is not an inductive predicate. *)

Proof.
(* FILL IN HERE *) Admitted.

(** **** Exercise: 3 stars, optional (Forall_nth)  *)
Lemma Forall_nth: forall {A: Type} (P: A -> Prop) d (al: list A), Forall P al <-> (forall i,  i < length al -> P (nth i al d)).
Proof.
  (* FILL IN HERE *) Admitted.

Lemma insert_sorted': forall a l, sorted' l -> sorted' (insert a l).
Proof.
    (* FILL IN HERE *) Admitted.

Theorem sort_sorted': forall l, sorted' (sort l).
Proof.
    (* FILL IN HERE *) Admitted.