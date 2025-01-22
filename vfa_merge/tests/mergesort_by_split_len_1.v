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
    (* intros. generalize dependent l1; generalize dependent l2. induction l using list_ind2.
    - intros. inversion H. simpl. auto.
    - intros. inversion H. simpl. split. reflexivity. auto.
    - intros. simpl. inversion H. destruct (split l). inversion H1. 
        simpl. destruct (IHl l3 l0). reflexivity. lia. *)
Qed.

 
Lemma split_perm : forall {X:Type} (l l1 l2: list X),
    split l = (l1,l2) -> Permutation l (l1 ++ l2).
Proof.
  intros. generalize dependent l1; generalize dependent l2. induction l using list_ind2.
  - intros. inversion H. auto.
  - intros. inversion H. auto.
  - intros. inversion H. destruct (split l). inversion H1.
  simpl. apply perm_skip. 
  (* HELPER LEMMA *)
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

Lemma merge_nil_r : forall l, merge l [] = l. 
Proof. intros. destruct l. reflexivity. reflexivity. Qed.

(* ================================================================= *)
(** ** Defining Mergesort *)

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
    (* HELPER LEMMA *)
    findlemma. Admitted.

    (* destruct (split_len _ _ _ E).
    simpl. lia.
  - intros.
    simpl in *. destruct (split l1) as [l1' l2'] eqn:E. inversion teq1. 
    (* HELPER LEMMA *)
    destruct (split_len _ _ _ E).
    simpl. lia.
Defined. *)
