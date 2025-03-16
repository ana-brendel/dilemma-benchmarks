From LFindToo Require Import LFindToo.

Require Import vfa_priqueue_benchmarks.Definitions.
From vfa_priqueue_benchmarks Require Import Decide. 

Require Import Coq.Lists.List.
Require Import Coq.Sorting.Permutation. 

Lemma select_perm: forall i l j r, select i l = (j, r) -> Permutation (i::l) (j::r).
Proof.
  intros i l; revert i.
  induction l; intros; simpl in *. inversion H.
  reflexivity.
  bdestruct (i >=? a). destruct (select i l) eqn:Seq. inversion H.
  apply perm_trans with (a :: i :: l). apply perm_swap. apply perm_trans with (a :: j :: l0). apply perm_skip. specialize (IHl i). apply IHl in Seq. rewrite <- H2. assumption. apply perm_swap. 
  destruct (select a l) eqn:Seq. inversion H. apply perm_trans with (i :: j :: l0). apply perm_skip. specialize (IHl a). apply IHl in Seq. rewrite <- H2. assumption. apply perm_swap.
Qed.

Lemma select_biggest_aux: forall i al j bl, Forall (fun x => j >= x) bl -> select i al = (j,bl) -> j >= i.
Proof. 
  intros i al; revert i; induction al; intros; simpl in *. inversion H0. lia.
  bdestruct (i >=? a). destruct (select i al) eqn:?H. apply IHal in H2. inversion H0. lia.
  inversion H0. inversion H. rewrite <- H3 in H5. discriminate.
  rewrite <- H7 in H5. inversion H5. assumption.
  destruct (select a al) eqn:?H. apply IHal in H2. inversion H0. lia.
  inversion H0. inversion H. rewrite <- H5 in H3. discriminate. rewrite <- H5 in H7. inversion H7. rewrite <- H10. assumption.
Qed.

Theorem select_biggest: forall i al j bl, select i al = (j,bl) -> Forall (fun x => j >= x) bl.
Proof. 
  intros i al; revert i; induction al; intros; simpl in *. inversion H. constructor.
  bdestruct (i >=? a). destruct (select i al) eqn:?H. pose proof H1. apply IHal in H1. inversion H. constructor. 
  (* HELPER LEMMA $ select_biggest_by_select_biggest_aux_1 $ *)
findlemma. Admitted.
(*
  apply select_biggest_aux in H2. inversion H. lia. assumption. inversion H. rewrite <- H4. assumption.
  destruct (select a al) eqn:?H. pose proof H1. apply IHal in H1. inversion H. constructor.  
  (* HELPER LEMMA $ select_biggest_by_select_biggest_aux_2 $ *)
  apply select_biggest_aux in H2. lia. assumption. rewrite <- H4. assumption.
Qed.
*)