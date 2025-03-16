From LFindToo Require Import LFindToo.


Require Import vfa_sort_benchmarks.Definitions.
From vfa_sort_benchmarks Require Import Decide.

(* These specify the libraries of functions that should be considered during synthesis that 
    are not defined within the above libraries. *)
Require Import Coq.Lists.List.
Require Import Coq.Sorting.Permutation. 

Require Import Lia.

Lemma insert_perm: forall x l, Permutation (x::l) (insert x l).
Proof.
  intros. induction l as [|a l'].
  - simpl. reflexivity.
  - simpl. bdestruct (x <=? a).
    + reflexivity.
    + simpl. rewrite perm_swap. apply perm_skip. assumption.
Qed.

Theorem sort_perm: forall l, Permutation l (sort l).
Proof.
  induction l.
  - simpl. reflexivity.
  - simpl. eapply perm_trans. apply perm_skip. apply IHl.
  (* HELPER LEMMA $ sort_perm_by_insert_perm $ *)
  findlemma. Admitted.
  (* apply insert_perm.
Qed. *)
