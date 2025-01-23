Require Import vfa_priqueue_benchmarks.Definitions.
Require Import vfa_priqueue_benchmarks.Decide. 

Require Import Coq.Lists.List.
Require Import Coq.Sorting.Permutation. 

Module Type PRIQUEUE.
  Parameter priqueue: Type.
  Definition key := nat.

  Parameter empty: priqueue.
  Parameter insert: key -> priqueue -> priqueue.
  Parameter delete_max: priqueue -> option (key * priqueue).
  Parameter merge: priqueue -> priqueue -> priqueue.

  Parameter priq: priqueue -> Prop.
  Parameter Abs: priqueue -> list key -> Prop.
  Axiom can_relate:  forall p, priq p -> exists al, Abs p al.
  Axiom abs_perm: forall p al bl,
   priq p -> Abs p al -> Abs p bl -> Permutation al bl.
  Axiom  empty_priq: priq empty.
  Axiom empty_relate:  Abs empty nil.
  Axiom insert_priq: forall k p, priq p -> priq (insert k p).
  Axiom insert_relate:
        forall p al k, priq p -> Abs p al -> Abs (insert k p) (k::al).
  Axiom delete_max_None_relate:
        forall p, priq p -> (Abs p nil <-> delete_max p = None).
  Axiom delete_max_Some_priq:
      forall p q k, priq p -> delete_max p = Some(k,q) -> priq q.
  Axiom delete_max_Some_relate:
  forall (p q: priqueue) k (pl ql: list key), priq p ->
   Abs p pl ->
   delete_max p = Some (k,q) ->
   Abs q ql ->
   Permutation pl (k::ql) /\ Forall (ge k) ql.
  Axiom merge_priq: forall p q, priq p -> priq q -> priq (merge p q).
  Axiom merge_relate:
    forall p q pl ql al,
       priq p -> priq q ->
       Abs p pl -> Abs q ql -> Abs (merge p q) al ->
       Permutation al (pl++ql).
End PRIQUEUE.

(** Take some time to consider whether this is the right specification!
    As always, if we get the specification wrong, then proofs of
    "correctness" are not so useful.
*)

(* ################################################################# *)
(** * Implementation *)

Module List_Priqueue <: PRIQUEUE.

(* ================================================================= *)
(** ** Some Preliminaries *)

Fixpoint select (i: nat) (l: list nat) : nat * list nat :=
match l with
|  nil => (i, nil)
|  h::t => if i >=? h
               then let (j, l') := select i t in (j, h::l')
               else let (j,l') := select h t in (j, i::l')
end.

(** **** Exercise: 3 stars, standard (select_perm_and_friends) *)

Lemma select_perm: forall i l j r,
  select i l = (j, r) -> Permutation (i::l) (j::r).
Proof. (* Copy your proof from Selection.v, and change one character. *)
intros i l; revert i.
induction l; intros; simpl in *. inversion H.
apply Permutation_refl.
bdestruct (i >=? a). destruct (select i l) eqn:Seq. inversion H.
apply perm_trans with (a :: i :: l). apply perm_swap. apply perm_trans with (a :: j :: l0). apply perm_skip. specialize (IHl i). apply IHl in Seq. rewrite <- H2. assumption. apply perm_swap. 
destruct (select a l) eqn:Seq. inversion H. apply perm_trans with (i :: j :: l0). apply perm_skip. specialize (IHl a). apply IHl in Seq. rewrite <- H2. assumption. apply perm_swap.
Qed.

Lemma select_biggest_aux:
  forall i al j bl,
    Forall (fun x => j >= x) bl ->
    select i al = (j,bl) ->
    j >= i.
Proof. (* Copy your proof of [select_smallest_aux] from Selection.v, and edit. *)
(* FILL IN HERE *) 
intros i al; revert i; induction al; intros; simpl in *. inversion H0. lia.
bdestruct (i >=? a). destruct (select i al) eqn:?H. apply IHal in H2. inversion H0. lia.
inversion H0. inversion H. rewrite <- H3 in H5. discriminate.
rewrite <- H7 in H5. inversion H5. assumption.
destruct (select a al) eqn:?H. apply IHal in H2. inversion H0. lia.
inversion H0. inversion H. rewrite <- H5 in H3. discriminate. rewrite <- H5 in H7. inversion H7. rewrite <- H10. assumption.
Qed.

Theorem select_biggest:
  forall i al j bl, select i al = (j,bl) ->
     Forall (fun x => j >= x) bl.
Proof. (* Copy your proof of [select_smallest] from Selection.v, and edit. *)
intros i al; revert i; induction al; intros; simpl in *. inversion H. constructor.
bdestruct (i >=? a). destruct (select i al) eqn:?H. pose proof H1. apply IHal in H1. inversion H. constructor. apply select_biggest_aux in H2. inversion H. lia. assumption. inversion H. rewrite <- H4. assumption.
destruct (select a al) eqn:?H. pose proof H1. apply IHal in H1. inversion H. constructor.  apply select_biggest_aux in H2. lia. assumption. rewrite <- H4. assumption.
Qed.

(* ================================================================= *)
(** ** The Program *)

Definition key := nat.

Definition priqueue := list key.

Definition empty : priqueue := nil.
Definition insert  (k: key)(p: priqueue) := k::p.
Definition delete_max (p: priqueue) :=
  match p with
  | i::p' => Some (select i p')
  | nil => None
  end.
Definition merge (p q: priqueue) : priqueue := p++q.

(* ################################################################# *)
(** * Predicates on Priority Queues *)

(* ================================================================= *)
(** ** The Representation Invariant *)

(** In this implementation of priority queues as unsorted lists,
    the representation invariant is trivial. *)

Definition priq (p: priqueue) := True.

Inductive Abs':  priqueue -> list key -> Prop :=
Abs_intro: forall p, Abs' p p.

Definition Abs := Abs'.

(* ================================================================= *)
(** ** Sanity Checks on the Abstraction Relation *)

Lemma can_relate : forall p, priq p -> exists al, Abs p al.
Proof.
  intros. exists p; constructor.
Qed.

Lemma abs_perm: forall p al bl,
   priq p -> Abs p al -> Abs p bl -> Permutation al bl.
Proof.
intros.
inv H0. inv H1. apply Permutation_refl.
Qed.

(* ================================================================= *)
(** ** Characterizations of the Operations on Queues *)

Lemma empty_priq: priq empty.
Proof. constructor. Qed.

Lemma empty_relate:  Abs empty nil.
Proof. constructor. Qed.

Lemma insert_priq: forall k p, priq p -> priq (insert k p).
Proof. intros; constructor. Qed.

Lemma insert_relate:
    forall p al k, priq p -> Abs p al -> Abs (insert k p) (k::al).
Proof. intros. unfold insert. inv H0. constructor. Qed.

Lemma delete_max_Some_priq:
      forall p q k, priq p -> delete_max p = Some(k,q) -> priq q.
Proof. constructor. Qed.

Lemma delete_max_None_relate:
  forall p, priq p ->
      (Abs p nil <-> delete_max p = None).
Proof.
  intros. split.
  intro. inversion H0. auto.
  intro. destruct p. constructor. discriminate.
  Qed.

Lemma delete_max_Some_relate:
  forall (p q: priqueue) k (pl ql: list key), priq p ->
   Abs p pl ->
   delete_max p = Some (k,q) ->
   Abs q ql ->
   Permutation pl (k::ql) /\ Forall (ge k) ql.
Proof.
induction p. intros. discriminate. 
intros. simpl in H1. inv H1. inv H0. inv H2. split. apply select_perm. assumption. apply (select_biggest a p). assumption.
Qed.


Lemma merge_priq:
  forall p q, priq p -> priq q -> priq (merge p q).
Proof. intros. constructor. Qed.

Lemma merge_relate:
    forall p q pl ql al,
       priq p -> priq q ->
       Abs p pl -> Abs q ql -> Abs (merge p q) al ->
       Permutation al (pl++ql).
Proof.
  intros. inv H1. inv H2. inv H3. unfold merge. apply Permutation_refl.
Qed.

End List_Priqueue.

