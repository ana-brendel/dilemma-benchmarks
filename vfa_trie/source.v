(** * Trie:  Number Representations and Efficient Lookup Tables *)

Require Import vfa_trie_benchmarks.Definitions.
From vfa_trie_benchmarks Require Import Decide.

(* These specify the libraries of functions that should be considered during synthesis that 
    are not defined within the above libraries. *)
Require Import Coq.Lists.List.
Require Import Coq.Sorting.Permutation. 

(* ################################################################# *)

Lemma succ_correct: forall p, positive2nat (succ p) = S (positive2nat p).
Proof. induction p. simpl. lia. simpl. reflexivity. simpl. reflexivity. Qed.

Lemma addc_correct: forall (c: bool) (p q: positive), positive2nat (addc c p q) = (if c then 1 else 0) + positive2nat p + positive2nat q.
Proof.
  intros c p. generalize dependent c. induction p. intros. simpl. destruct c. destruct q.
  simpl. specialize (IHp true q). simpl in IHp. lia.
  simpl. specialize (IHp true q). simpl in IHp. lia.
  simpl. 
  (* HELPER LEMMA $ addc_correct_by_succ_correct_1 $ *)
  rewrite succ_correct. lia.
  destruct q. simpl. specialize (IHp true q). simpl in IHp. lia.
  simpl. specialize (IHp false q). simpl in IHp. lia.
  simpl. 
  (* HELPER LEMMA $ addc_correct_by_succ_correct_2 $ *)
  rewrite succ_correct. lia.
  intros. simpl. destruct c. destruct q.
  simpl. specialize (IHp true q). simpl in IHp. lia.
  simpl. specialize (IHp false q). simpl in IHp. lia.
  simpl. 
  (* HELPER LEMMA $ addc_correct_by_succ_correct_3 $ *)
  rewrite succ_correct. lia.
  destruct q. simpl. specialize (IHp false q). simpl in IHp. lia.
  simpl. specialize (IHp false q). simpl in IHp. lia.
  simpl. lia.
  intros. simpl. destruct c. destruct q.
  simpl.  
  (* HELPER LEMMA $ addc_correct_by_succ_correct_4 $ *)
  rewrite succ_correct. lia.
  simpl. 
  (* HELPER LEMMA $ addc_correct_by_succ_correct_5 $ *)
  rewrite succ_correct. lia.
  simpl. reflexivity.
  destruct q. simpl. 
  (* HELPER LEMMA $ addc_correct_by_succ_correct_6 $ *)
  rewrite succ_correct. lia.
  simpl. lia. simpl. reflexivity.
Qed.
  

Theorem add_correct: forall (p q: positive), positive2nat (add p q) = positive2nat p + positive2nat q.
Proof. 
  intros. unfold add. 
  (* HELPER LEMMA $ add_correct_by_positive2nat_pos_1 $ *)
  apply addc_correct. 
Qed.

Lemma positive2nat_pos: forall p, positive2nat p > 0.
Proof. intros. induction p; simpl; lia. Qed.

Theorem compare_correct:
 forall x y,
  match compare x y with
  | Lt => positive2nat x < positive2nat y
  | Eq => positive2nat x = positive2nat y
  | Gt => positive2nat x > positive2nat y
 end.
Proof.
  induction x; destruct y; simpl.
  specialize (IHx y). destruct (compare x y); lia.
  specialize (IHx y). destruct (compare x y); lia.
  assert (positive2nat x > 0). 
  (* HELPER LEMMA $ compare_correct_by_positive2nat_pos_1 $ *)
  apply positive2nat_pos. lia.
  specialize (IHx y). destruct (compare x y); lia.
  specialize (IHx y). destruct (compare x y); lia.
  assert (positive2nat x > 0). 
  (* HELPER LEMMA $ compare_correct_by_positive2nat_pos_2 $ *)
  apply positive2nat_pos. lia.
  assert (positive2nat y > 0). 
  (* HELPER LEMMA $ compare_correct_by_positive2nat_pos_3 $ *)
  apply positive2nat_pos. lia.
  assert (positive2nat y > 0). 
  (* HELPER LEMMA $ compare_correct_by_positive2nat_pos_4 $ *)
  apply positive2nat_pos. lia.
  reflexivity.
Qed.

(* ================================================================= *)
(** ** Lemmas About the Relation Between [lookup] and [insert] *)

Lemma look_leaf: forall a j, look a j Leaf = a.
Proof. intros. destruct j; reflexivity. Qed.

Lemma look_ins_same: forall a k v t, look a k (ins a k v t) = v.
Proof.
  induction k. intros. simpl. destruct t. apply (IHk v Leaf). apply (IHk v t2).
  intros. simpl. destruct t. apply (IHk v Leaf). apply (IHk v t1).
  intros. simpl. destruct t. reflexivity. reflexivity.
Qed.


Lemma look_ins_other: forall a j k v t, j <> k -> look a j (ins a k v t) = look a j t.
Proof.
  induction j; destruct k; intros; simpl; auto.
  - destruct t. rewrite (IHj k v Leaf). 
  (* HELPER LEMMA $ look_ins_other_by_look_leaf_1 $ *)
  apply look_leaf. unfold not. intros. rewrite H0 in H. contradiction. 
    rewrite (IHj k v t2). reflexivity. unfold not. intros. rewrite H0 in H. contradiction. 
  - destruct t. 
  (* HELPER LEMMA $ look_ins_other_by_look_leaf_2 $ *)
  apply look_leaf. reflexivity.
  - destruct t. 
  (* HELPER LEMMA $ look_ins_other_by_look_leaf_3 $ *)
  apply look_leaf. reflexivity.
  - destruct t. 
  (* HELPER LEMMA $ look_ins_other_by_look_leaf_4 $ *)
  apply look_leaf. reflexivity.
  - destruct t. rewrite (IHj k v Leaf). 
  (* HELPER LEMMA $ look_ins_other_by_look_leaf_5 $ *)
  apply look_leaf. unfold not. intros. rewrite H0 in H. contradiction. 
    rewrite (IHj k v t1). reflexivity. unfold not. intros. rewrite H0 in H. contradiction. 
  - destruct t. 
  (* HELPER LEMMA $ look_ins_other_by_look_leaf_6 $ *)
  apply look_leaf. reflexivity.
  - destruct t. reflexivity. reflexivity.
  - destruct t. reflexivity. reflexivity.
  - destruct t. contradict H. reflexivity. contradict H. reflexivity.
Qed. 

(* ================================================================= *)
(** ** Bijection Between [positive] and [nat]. *)

(* NOT INCLUDING ????  *)
(* Lemma pos2nat2pos: forall p, nat2pos (pos2nat p) = p.
Proof. (* You don't need to read this proof! *)
  intro. unfold nat2pos, pos2nat.
  rewrite <- (Pos2Nat.id p) at 2.
  destruct (Pos.to_nat p) eqn:?.
  pose proof (Pos2Nat.is_pos p). lia.
  rewrite <- Pos.of_nat_succ.
  reflexivity.
Qed. *)

(* NOT INCLUDING ????  *)
(* Lemma nat2pos2nat: forall i, pos2nat (nat2pos i) = i.
Proof. (* You don't need to read this proof! *)
  intro. unfold nat2pos, pos2nat.
  rewrite SuccNat2Pos.id_succ.
  reflexivity.
Qed. *)

(* NOT INCLUDING ????  *)
(* Lemma pos2nat_injective: forall p q, pos2nat p = pos2nat q -> p=q.
Proof.
  induction p. destruct q. intros. f_equal. apply IHp. unfold pos2nat in H. unfold pos2nat. 
  rewrite Pos2Nat.inj_xI in H. 
  rewrite Pos2Nat.inj_xI in H. simpl in H. assert (Pos.to_nat p = Pos.to_nat q). lia. rewrite H0. reflexivity. intros. unfold pos2nat in H. unfold pos2nat. 
  rewrite Pos2Nat.inj_xI in H. 
  rewrite Pos2Nat.inj_xO in H. contradict H. lia. intros. unfold pos2nat in H. 
  rewrite Pos2Nat.inj_xI in H. simpl in H. assert (0 < Pos.to_nat p). 
  apply Pos2Nat.is_pos. lia. intros. destruct q. unfold pos2nat in H. unfold pos2nat. 
  rewrite Pos2Nat.inj_xO in H. 
  rewrite Pos2Nat.inj_xI in H. contradict H. lia. intros. f_equal. apply IHp. unfold pos2nat in H. unfold pos2nat. 
  rewrite Pos2Nat.inj_xO in H. 
  rewrite Pos2Nat.inj_xO in H. simpl in H. assert (Pos.to_nat p = Pos.to_nat q). lia. rewrite H0. reflexivity. intros. unfold pos2nat in H. unfold pos2nat. 
  rewrite Pos2Nat.inj_xO in H. simpl in H. assert (0 < Pos.to_nat p). 
  apply Pos2Nat.is_pos. lia. intros. destruct q. unfold pos2nat in H. 
  rewrite Pos2Nat.inj_xI in H. simpl in H. assert (0 < Pos.to_nat q). 
  apply Pos2Nat.is_pos. lia. unfold pos2nat in H. 
  rewrite Pos2Nat.inj_xO in H. simpl in H. assert (0 < Pos.to_nat q). 
  apply Pos2Nat.is_pos. lia.
  reflexivity.
Qed. *)

(* NOT INCLUDING ????  *)
(* Lemma nat2pos_injective: forall i j, nat2pos i = nat2pos j -> i=j.
Proof.
  induction i. destruct j. intros. reflexivity.
  intros. unfold nat2pos in H. 
  apply SuccNat2Pos.inj. assumption.
  destruct j. intros. unfold nat2pos in H. 
  apply SuccNat2Pos.inj. assumption.
  intros. f_equal. apply IHi. unfold nat2pos in H. 
  apply SuccNat2Pos.inj in H. inversion H. reflexivity.
Qed. *)

(* ================================================================= *)

(* No helper lemma removing vacuous is_trie *)
(* Theorem empty_is_trie: forall default, is_trie (empty default).
Proof. intros. constructor. Qed. *)

(* No helper lemma removing vacuous is_trie *)
(* Theorem insert_is_trie: forall i x t, is_trie t -> is_trie (insert i x t).
Proof. intros. constructor. Qed. *)

(* *** Commented out because it uses Abs which uses total_map *** *)
(* Theorem empty_relate: forall {A} (default: A),
    Abs (empty default) (t_empty default).
Proof.
(* FILL IN HERE *) Admitted. *)

(* *** Commented out because it uses Abs which uses total_map *** *)
(* Theorem lookup_relate: forall {A} i (t: trie_table A) m,
    is_trie t -> Abs t m -> lookup i t = m (pos2nat i).
(* FILL IN HERE *) Admitted. *)

(* *** Commented out because it uses Abs which uses total_map *** *)
(* Theorem insert_relate: forall {A} k (v: A) t cts,
    is_trie t ->
    Abs t cts ->
    Abs (insert k v t) (t_update cts (pos2nat k) v).
(* FILL IN HERE *) Admitted. *)
