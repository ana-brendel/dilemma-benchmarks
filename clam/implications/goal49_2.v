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

Fixpoint eqb (n m: Nat) : bool :=
  match n, m with
    | zero, zero => true
    | zero, succ _ => false
    | succ _, zero => false
    | succ n', succ m' => eqb n' m'
  end.

Fixpoint less (less_arg0 : Nat) (less_arg1 : Nat) : bool
           := match less_arg0, less_arg1 with
              | _, zero => false
              | zero, succ x => true
              | succ x, succ y => less x y
              end.

Fixpoint mem (mem_arg0 : Nat) (mem_arg1 : Lst) : bool
           := match mem_arg0, mem_arg1 with
              | x, nil => false
              | x, cons y z => orb (eqb x y) (mem x z)
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

Theorem eqb_refl: forall n, eqb n n = true.
Proof.
  induction n; simpl.
  { assumption. }
  { reflexivity. }
Qed.

Theorem mem_cons: forall (x n: Nat) (l: Lst), mem x (cons n l) = true -> x = n \/ mem x l = true.
Proof.
  intros.
  induction l.
  {
    simpl in *.
    apply Bool.Is_true_eq_left in H.
    apply Bool.orb_prop_elim in H.
    destruct H.
    {
      apply eqb_elim in H.
      left. assumption.
    }
    {
      apply Bool.Is_true_eq_true in H.
      right. assumption.
    }
  }
  {
    left.
    simpl in H.
    apply Bool.Is_true_eq_left in H.
    apply Bool.orb_prop_elim in H.
    destruct H.
    {
      apply eqb_elim in H.
      assumption.
    }
    {
      destruct H.
    }
  }
Qed.

Theorem goal49_2: forall (x n: Nat) (l: Lst), mem x (insort n l) = true -> x = n \/ mem x l = true.
Proof.
  intros.
  induction l.
    simpl in H.
    destruct (less n n0).
      apply mem_cons in H.
      assumption.
      findlemma. Admitted.

      (* apply mem_cons in H.
      destruct H.
        right.
        simpl.
        subst.
        rewrite eqb_refl. simpl. reflexivity.
        apply IHl in H.
        destruct H.
          left. assumption.
          right. simpl. rewrite H. apply Bool.orb_true_r.
    simpl in H.
    apply Bool.Is_true_eq_left in H.
    apply Bool.orb_prop_elim in H.
    destruct H.
      left. apply eqb_elim. assumption.
      destruct H.
Qed. *)
