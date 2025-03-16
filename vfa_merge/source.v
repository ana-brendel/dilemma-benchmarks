(* These specify the libraries of functions that should be considered during synthesis that 
    are not defined within the above libraries. *)
Require Import Coq.Lists.List.
Require Import Coq.Sorting.Permutation. 
From Coq Require Import micromega.Lia.

From LFindToo Require Import LFindToo.

Require Import vfa_merge_benchmarks.Definitions.
Require Import vfa_merge_benchmarks.Decide.


Lemma split_len': list_ind2_principle -> forall {X} (l:list X) (l1 l2: list X),
    split l = (l1,l2) -> length l1 <= length l /\ length l2 <= length l.
Proof.
    unfold list_ind2_principle; intro IP.
    induction l using IP; intros.
    - inversion H. lia.
    - inversion H. simpl; lia.
    - inversion H. destruct (split l) as [l1' l2']. inversion H1.
    simpl.
    destruct (IHl l1' l2') as [P1 P2]; auto; lia.
Qed.

Lemma split_len: forall {X} (l:list X) (l1 l2: list X),
    split l = (l1,l2) ->
    length l1 <= length l /\
    length l2 <= length l.
Proof.
    apply (@split_len' list_ind2).
Qed.

Lemma split_perm : forall {X:Type} (l l1 l2: list X),
    split l = (l1,l2) -> Permutation l (l1 ++ l2).
Proof.
  intros. generalize dependent l1; generalize dependent l2. induction l using list_ind2.
  - intros. inversion H. auto.
  - intros. inversion H. auto.
  - intros. inversion H. destruct (split l). inversion H1.
  simpl. apply perm_skip. 
  (* HELPERLEMMA split_perm_by_Permutation_cons_app *)
  apply Permutation_cons_app. apply IHl. reflexivity.
Qed.

Lemma merge2 : forall (x1 x2:nat) r1 r2,
    x1 <= x2 -> merge (x1::r1) (x2::r2) = x1::merge r1 (x2::r2).
Proof.
    intros. generalize dependent x1; generalize dependent x2; generalize dependent r2. 
    induction r1 using list_ind2.
    - intros. simpl. bdestruct (Nat.leb x1 x2). reflexivity. lia. 
    - intros. simpl. bdestruct (Nat.leb x1 x2). reflexivity. lia. 
    - intros. simpl. bdestruct (Nat.leb x1 x2). 
    { apply f_equal.  bdestruct (Nat.leb a x2).
        -- apply f_equal. reflexivity.
        -- apply f_equal. reflexivity. }
    { lia. }
Qed.

Lemma merge_nil_l : forall l, merge [] l = l. 
Proof. intros. destruct l. reflexivity. reflexivity. Qed.

Function mergesort (l: list nat) {measure length l} : list nat :=
  match l with
  | [] => []
  | [x] => [x]
  | _ => let (l1,l2) := split l in
         merge (mergesort l1) (mergesort l2)
  end.
Proof.
  - intros.
    simpl in *.  destruct (split l1) as [l1' l2'] eqn:E. inversion teq1. 
    (* HELPERLEMMA mergesort_by_split_len_1 *)
    destruct (split_len _ _ _ E).
    simpl. lia.
  - intros.
    simpl in *. destruct (split l1) as [l1' l2'] eqn:E. inversion teq1. 
    (* HELPERLEMMA mergesort_by_split_len_2 *)
    destruct (split_len _ _ _ E).
    simpl. lia.
Defined.

(* ================================================================= *)
(** ** Correctness: Sortedness *)

Lemma sorted_merge1 : forall x x1 l1 x2 l2,
    x <= x1 -> x <= x2 -> sorted (merge (x1::l1) (x2::l2)) -> sorted (x :: merge (x1::l1) (x2::l2)).
Proof.
    intros.
    simpl in H1; simpl. bdestruct (Nat.leb x1 x2).
    - apply sorted_cons. assumption. assumption.
    - apply sorted_cons. assumption. assumption.
Qed.

Lemma sorted_merge : forall l1, sorted l1 -> forall l2, sorted l2 -> sorted (merge l1 l2).
Proof.
    induction l1. destruct l2.
    - intros. simpl. assumption.
    - intros. simpl. assumption. 
    - intro. induction l2.
    + simpl. intros. assumption.
    + intro. simpl. bdestruct (a <=? a0).
    ++ destruct l1. simpl. apply sorted_cons. assumption. assumption. 
    (* HELPERLEMMA sorted_merge_by_sorted_merge1_1 *)
    apply sorted_merge1. inversion H. assumption. assumption. apply IHl1. inversion H. assumption. assumption.
    ++ destruct l2. apply sorted_cons. lia. assumption.
    (* HELPERLEMMA sorted_merge_by_sorted_merge1_2 *)
    apply sorted_merge1. lia. inversion H0. assumption. apply IHl2. inversion H0. assumption.
Qed.

Lemma mergesort_sorts: forall l, sorted (mergesort l).
Proof. 
  intros. apply mergesort_ind; intros.
  - apply sorted_nil.
  - apply sorted_1.
  - 
  (* HELPERLEMMA mergesort_sorts_by_sorted_merge *)
  apply sorted_merge. assumption. assumption.
Qed.

Lemma merge_perm: forall (l1 l2: list nat), Permutation (l1 ++ l2) (merge l1 l2). 
Proof. 
  intros. generalize dependent l2. induction l1.
  - intros. 
  (* HELPERLEMMA merge_perm_by_merge_nil_l *)
  rewrite merge_nil_l. simpl. reflexivity.
  - induction l2.
  + simpl. 
  (* HELPERLEMMA merge_perm_by_app_nil_r *)
  rewrite app_nil_r. reflexivity.
  + unfold merge. fold merge. destruct (Nat.leb a a0).
  ++ apply perm_skip. apply IHl1.
  ++ 
  (* HELPERLEMMA merge_perm_by_Permutation_trans_1 *)
  apply Permutation_trans with (l' := (a0 :: l2) ++ (a :: l1)).
    * 
    (* HELPERLEMMA merge_perm_by_Permutation_app_comm_1 *)
    apply Permutation_app_comm.
    * simpl. apply perm_skip. 
    (* HELPERLEMMA merge_perm_by_Permutation_trans_2 *)
    apply Permutation_trans with (l' := (a :: l1) ++ l2).
    ** 
    (* HELPERLEMMA merge_perm_by_Permutation_app_comm_2 *)
    apply Permutation_app_comm.
    ** assumption.
Qed. 

Lemma mergesort_perm: forall l, Permutation l (mergesort l).
Proof. 
  apply mergesort_ind; intros.
  - auto.
  - auto.
  - rewrite <- e. rewrite <- e in y. clear e. clear _x.
  (* HELPERLEMMA mergesort_perm_by_Permutation_trans_1 *)
  apply Permutation_trans with (l' := mergesort l1 ++ mergesort l2).
  (* HELPERLEMMA mergesort_perm_by_Permutation_trans_2 *)
  apply Permutation_trans with (l' := l1 ++ l2).
  (* HELPERLEMMA mergesort_perm_by_split_perm *)
  apply split_perm. assumption.
  (* HELPERLEMMA mergesort_perm_by_Permutation_app *)
  apply Permutation_app. assumption. assumption. 
  (* HELPERLEMMA mergesort_perm_by_merge_perm *)
  apply merge_perm.
Qed. 

Theorem mergesort_correct: is_a_sorting_algorithm mergesort.
Proof.
  split.
  (* HELPERLEMMA mergesort_correct_by_mergesort_perm *)
  apply mergesort_perm.
  (* HELPERLEMMA mergesort_correct_by_mergesort_sorts *)
  apply mergesort_sorts.
Qed.

