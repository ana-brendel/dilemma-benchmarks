From LFindToo Require Import LFindToo.
From QuickChick Require Import QuickChick.

Require Import Nat Arith.

Inductive Nat : Type := succ : Nat -> Nat |  zero : Nat.

Inductive Lst : Type := cons : Nat -> Lst -> Lst |  nil : Lst.

(* ************************** [ QuickChick Stuff ] *************************** *)
Derive Show for Nat.
Derive Arbitrary for Nat.
Instance Dec_Eq_Nat : Dec_Eq (Nat).
Proof. dec_eq. Qed.

Derive Show for Lst.
Derive Arbitrary for Lst.
Instance Dec_Eq_lst : Dec_Eq (Lst).
Proof. dec_eq. Qed.

Fixpoint less (less_arg0 : Nat) (less_arg1 : Nat) : bool
           := match less_arg0, less_arg1 with
              | _, zero => false
              | zero, succ x => true
              | succ x, succ y => less x y
              end.

Fixpoint eqb (n m: Nat) : bool :=
  match n, m with
    | zero, zero => true
    | zero, succ _ => false
    | succ _, zero => false
    | succ n', succ m' => eqb n' m'
  end.

Fixpoint count (count_arg0 : Nat) (count_arg1 : Lst) : Nat
           := match count_arg0, count_arg1 with
              | x, nil => zero
              | x, cons y z => if eqb x y then succ (count x z) else count x z
              end.

Fixpoint insort (insort_arg0 : Nat) (insort_arg1 : Lst) : Lst
           := match insort_arg0, insort_arg1 with
              | i, nil => cons i nil
              | i, cons x y => if less i x then cons i (cons x y) else cons x (insort i y)
              end.

Fixpoint sort (sort_arg0 : Lst) : Lst
           := match sort_arg0 with
              | nil => nil
              | cons x y => insort x (sort y)
              end.

Theorem eqb_refl: forall n, eqb n n = true.
Proof.
  induction n; simpl.
  { assumption. }
  { reflexivity. }
Qed.

Theorem eqb_diff: forall (x y: Nat), x <> y -> eqb x y = false.
Proof.
  induction x; induction y; simpl.
  {
    intros.
    apply IHx.
    intro.
    subst.
    assert (succ y = succ y). reflexivity.
    apply H in H0.
    destruct H0.
  }
  {
    intros. reflexivity.
  }
  {
    intros. reflexivity.
  }
  {
    intros.
    assert (zero = zero). reflexivity.
    apply H in H0.
    destruct H0.
  }
Qed.

Theorem eqb_elim: forall (x y: Nat), Bool.Is_true (eqb x y) -> x = y.
Proof.
  induction x; induction y; simpl in *.
  intros.
  {
    apply IHx in H.
    subst.
    reflexivity.
  }
  {
    intros.
    destruct H.
  }
  { intros; destruct H. }
  {
    intros. reflexivity.
  }
Qed.

Theorem count_cons: forall (x: Nat) (l: Lst), count x (cons x l) = succ (count x l).
Proof.
  intros.
  simpl.
  rewrite eqb_refl.
  reflexivity.
Qed.

Theorem count_insort: forall (x: Nat) (l: Lst), count x (insort x l) = succ (count x l).
Proof.
  intros.
  induction l.
  {
    simpl in *.
    destruct (less x n).
    {
      rewrite count_cons.
      f_equal.
    }
    {
      destruct (eqb x n) eqn:E.
      {
        apply Bool.Is_true_eq_left in E.
        apply eqb_elim in E.
        rewrite E in *.
        rewrite count_cons.
        rewrite IHl.
        reflexivity.
      }
      {
        simpl.
        rewrite E.
        assumption.
      }
    }
  }
  {
    simpl.
    rewrite eqb_refl.
    reflexivity.
  }
Qed.

Theorem count_cons_diff: forall (x y: Nat) (l: Lst), x <> y -> count x (cons y l) = count x l.
Proof.
  intros. simpl.
  apply eqb_diff in H.
  rewrite H.
  reflexivity.
Qed.

Theorem count_insort_diff: forall (x y: Nat) (l: Lst), x <> y -> count x (insort y l) = count x l.
Proof.
  intros.
  induction l.
    simpl.
    destruct (less y n) eqn:El; destruct (eqb x n) eqn:Ee.
      simpl.
      apply eqb_diff in H. rewrite H.
      rewrite Ee.
      reflexivity.
      rewrite count_cons_diff.
      simpl. rewrite Ee. reflexivity. assumption.
      simpl. rewrite Ee. f_equal. assumption.
      simpl. rewrite Ee. assumption.
    simpl.
    apply eqb_diff in H.
    rewrite H.
    reflexivity.
Qed.

Theorem goal50_3 : forall (x : Nat) (y : Lst), eq (count x (sort y)) (count x y).
Proof.
  intros.
  induction y.
    simpl.
    destruct (eqb x n) eqn:E.
      apply Bool.Is_true_eq_left in E.
      apply eqb_elim in E.
      subst.
      rewrite count_insort.
      f_equal. assumption.
      simpl.
      findlemma. Admitted.

      (* rewrite count_insort_diff.
      assumption.
      intro.
      rewrite H in E.
      rewrite eqb_refl in E.
      inversion E.
    simpl.
    reflexivity.
Qed. *)
