Load LFindLoad.
From lfind Require Import LFind.
Unset Printing Notations.
Set Printing Implicit.

From CircuitsCoqGym Require Import AdderProof.

Fixpoint BV_increment (l : list bool) : BV :=
  match l with
  | nil => nilbv
  | false :: v => true :: v
  | true :: v => false :: BV_increment v
  end.


Fixpoint BV_increment_carry (l : list bool) : bool :=
  match l with
  | nil => true
  | false :: v => false
  | true :: v => BV_increment_carry v
  end.



Fixpoint BV_decrement (l : list bool) : BV :=
  match l with
  | nil => nilbv
  | false :: v => true :: BV_decrement v
  | true :: v => false :: v
  end.

Fixpoint BV_decrement_carry (l : list bool) : bool :=
  match l with
  | nil => true
  | false :: v => BV_decrement_carry v
  | true :: v => false
  end.



Lemma length_BV_increment : forall v : BV, lengthbv (BV_increment v) = lengthbv v.
Proof.
  simple induction v. auto.
  simple induction a.
  simpl in |- *. intros. rewrite H; trivial.
  simpl in |- *. intros. trivial.
Qed.

Lemma length_BV_decrement : forall v : BV, lengthbv (BV_decrement v) = lengthbv v.
Proof.
  simple induction v. auto.
  simple induction a.
  simpl in |- *. intros. trivial.
  simpl in |- *. intros. rewrite H; trivial.
Qed.

Lemma BV_increment_limit : forall n : nat, BV_increment (list_const bool n true) = list_const bool n false.
Proof.
  simple induction n. simpl in |- *. auto. intros. simpl in |- *. rewrite H; trivial.
Qed.

Lemma BV_decrement_limit : forall n : nat, BV_decrement (list_const bool n false) = list_const bool n true.
Proof.
  simple induction n. simpl in |- *. auto. intros. simpl in |- *. rewrite H; trivial.
Qed.

Lemma BV_increment_limit_carry : forall n : nat, BV_increment_carry (list_const bool n true) = true.
Proof.
  simple induction n. auto. intros. simpl in |- *. exact H.
Qed.

Lemma BV_decrement_limit_carry : forall n : nat, BV_decrement_carry (list_const bool n false) = true.
Proof.
  simple induction n. auto. intros. simpl in |- *. exact H.
Qed.

Lemma BV_increment_adder : forall v : BV, appbv (BV_increment v) (consbv (BV_increment_carry v) nilbv) = BV_full_adder v nilbv true.
Proof.
  simple induction v.
  simpl in |- *. unfold BV_full_adder in |- *. unfold nilbv, consbv, appbv in |- *. simpl in |- *. trivial.
  (* Induction a. Unfold consbv nilbv appbv . Simpl. Intros. Rewrite -> H.*)
  simple induction a. intros. unfold consbv, nilbv, appbv in |- *. simpl in |- *.
  unfold consbv, nilbv, appbv in H. rewrite H.
  (* *)
  unfold BV_full_adder in |- *. simpl in |- *. replace (half_adder_sum true true) with false.
  trivial.
  auto.
  unfold BV_full_adder in |- *. unfold consbv, nilbv, appbv in |- *. intros. simpl in |- *.
  replace (half_adder_sum false true) with true.
  replace (BV_full_adder_sum l nil false) with l.
  replace (BV_full_adder_carry l nil false) with false.
  trivial.
  auto. auto. auto.
Qed.

Lemma BV_increment_ok : forall v : BV, BV_to_nat (appbv (BV_increment v) (consbv (BV_increment_carry v) nilbv)) = S (BV_to_nat v).
Proof.
  intro. rewrite BV_increment_adder. 
  lfind_debug.
  Admitted.

  (* rewrite BV_full_adder_ok.
  simpl in |- *. elim plus_n_O. elim plus_n_Sm. auto.
Qed. *)

