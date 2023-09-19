Load LFindLoad.
From lfind Require Import LFind.
Unset Printing Notations.
Set Printing Implicit.

From CircuitsCoqGym Require Import BV.
From CircuitsCoqGym Require Import FullAdder.

(****************************************************************)

Definition BV_full_adder_sum :=
(fix F (l : list bool) : list bool -> bool -> BV :=
    match l with
    | nil =>
        (fix F0 (l0 : list bool) : bool -> BV :=
          match l0 with
          | nil => fun _ : bool => nilbv
          | b :: l1 =>
              fun z : bool =>
              consbv (half_adder_sum b z) (F0 l1 (half_adder_carry b z))
          end)
    | b :: l0 =>
        fun x2 : list bool =>
        match x2 with
        | nil =>
            fun y z : bool =>
            consbv (half_adder_sum y z) (F l0 nil (half_adder_carry y z))
        | b0 :: l1 =>
            fun y z : bool =>
            consbv (full_adder_sum y b0 z)
              (F l0 l1 (full_adder_carry y b0 z))
        end b
    end).
  

Lemma BV_full_adder_sum_eq1 :forall b : bool, BV_full_adder_sum nil nil b = nilbv.
Proof. auto. Qed.

Lemma BV_full_adder_sum_eq2 : forall (vh : bool) (vt : list bool) (b : bool), BV_full_adder_sum nil (vh :: vt) b =
consbv (half_adder_sum vh b) (BV_full_adder_sum nil vt (half_adder_carry vh b)).
Proof. auto. Qed.

Lemma BV_full_adder_sum_eq3 : forall (vh : bool) (vt : list bool) (b : bool), BV_full_adder_sum (vh :: vt) nil b =
consbv (half_adder_sum vh b) (BV_full_adder_sum vt nil (half_adder_carry vh b)).
Proof. auto. Qed.

Lemma BV_full_adder_sum_eq4 : forall (vh : bool) (vt : list bool) (wh : bool) (wt : list bool) (b : bool), BV_full_adder_sum (vh :: vt) (wh :: wt) b =
consbv (full_adder_sum vh wh b) (BV_full_adder_sum vt wt (full_adder_carry vh wh b)).
Proof. auto. Qed.

Definition BV_full_adder_carry :=
(fix F (l : list bool) : list bool -> bool -> bool :=
    match l with
    | nil =>
        (fix F0 (l0 : list bool) : bool -> bool :=
          match l0 with
          | nil => fun z : bool => z
          | b :: l1 => fun z : bool => F0 l1 (half_adder_carry b z)
          end)
    | b :: l0 =>
        fun x2 : list bool =>
        match x2 with
        | nil => fun y z : bool => F l0 nil (half_adder_carry y z)
        | b0 :: l1 => fun y z : bool => F l0 l1 (full_adder_carry y b0 z)
        end b
    end).


Lemma BV_full_adder_carry_eq1 : forall b : bool, BV_full_adder_carry nil nil b = b.
Proof. auto. Qed.

Lemma BV_full_adder_carry_eq2 : forall (vh : bool) (vt : list bool) (b : bool), BV_full_adder_carry nil (vh :: vt) b =
BV_full_adder_carry nil vt (half_adder_carry vh b).
Proof. auto. Qed.


Lemma BV_full_adder_carry_eq3 : forall (vh : bool) (vt : list bool) (b : bool), BV_full_adder_carry (vh :: vt) nil b =
BV_full_adder_carry vt nil (half_adder_carry vh b).
Proof. auto. Qed.

Lemma BV_full_adder_carry_eq4 : forall (vh : bool) (vt : list bool) (wh : bool) (wt : list bool) (b : bool), BV_full_adder_carry (vh :: vt) (wh :: wt) b =
BV_full_adder_carry vt wt (full_adder_carry vh wh b).
Proof. auto. Qed.


Definition BV_full_adder (v w : BV) (cin : bool) : BV := appbv (BV_full_adder_sum v w cin) (consbv (BV_full_adder_carry v w cin) nilbv).

(****************************************************************)

Lemma BV_full_adder_sum_v_nil_false :
forall v : BV, BV_full_adder_sum v nilbv false = v.
Proof.
  unfold nilbv in |- *. simple induction v. trivial. intros.
  rewrite BV_full_adder_sum_eq3. rewrite half_adder_carry_false.
  rewrite half_adder_sum_false. rewrite H; auto.
Qed. 

Lemma BV_full_adder_carry_v_nil_false :
forall v : BV, BV_full_adder_carry v nilbv false = false.
Proof.
  unfold nilbv in |- *.
  simple induction v. trivial. intros.
  rewrite BV_full_adder_carry_eq3. rewrite half_adder_carry_false.
  trivial.
Qed. 

Lemma BV_full_adder_sum_sym :
forall (v w : BV) (cin : bool), BV_full_adder_sum v w cin = BV_full_adder_sum w v cin.
Proof.
  simple induction v. simple induction w. auto. intros.
  rewrite BV_full_adder_sum_eq2. rewrite BV_full_adder_sum_eq3.
  rewrite H. auto. simple induction w. intro.
  lfind_debug.
  Admitted.

  (* rewrite BV_full_adder_sum_eq2. rewrite BV_full_adder_sum_eq3. rewrite H.
  auto. intros. repeat rewrite BV_full_adder_sum_eq4. rewrite H.
  do 2 rewrite full_adder_carry_sym1. do 2 rewrite full_adder_sum_sym1. auto.
Qed. *)
 