From LFindToo Require Import LFindToo.
From QuickChick Require Import QuickChick.

Require Import Nat Arith Bool.

Inductive Nat : Type := succ : Nat -> Nat |  zero : Nat.

Inductive Lst : Type := nil : Lst | cons : Nat -> Lst -> Lst.

(* ************************** [ QuickChick Stuff ] *************************** *)
Derive Show for Nat.
Derive Arbitrary for Nat.
Instance Dec_Eq_Nat : Dec_Eq (Nat).
Proof. dec_eq. Qed.

Derive Show for Lst.
Derive Arbitrary for Lst.
Instance Dec_Eq_lst : Dec_Eq (Lst).
Proof. dec_eq. Qed.

Scheme Equality for Nat.

Fixpoint append (append_arg0 : Lst) (append_arg1 : Lst) : Lst
           := match append_arg0, append_arg1 with
              | nil, x => x
              | cons x y, z => cons x (append y z)
              end.

Fixpoint mem (mem_arg0 : Nat) (mem_arg1 : Lst) : bool
:= match mem_arg0, mem_arg1 with
    | x, nil => false
    | x, cons y z => orb (Nat_beq x y) (mem x z)
    end.

Definition lst_mem (lst_mem_arg0 : Nat) (lst_mem_arg1 : Lst) : bool
           := match lst_mem_arg0, lst_mem_arg1 with
              | n, x => mem n x
              end.

Fixpoint lst_subset (lst_subset_arg0 : Lst) (lst_subset_arg1 : Lst) : Prop
           := match lst_subset_arg0, lst_subset_arg1 with
              | nil, x => True
              | cons n x, y => and (lst_subset x y) (lst_mem n y = true)
              end.

Definition lst_eq (lst_eq_arg0 : Lst) (lst_eq_arg1 : Lst) : Prop
           := match lst_eq_arg0, lst_eq_arg1 with
              | x, y => and (lst_subset x y) (lst_subset y x)
              end.

Instance lst_subset_dec (m : Lst) (n : Lst) : (Dec (lst_subset m n)).
Proof. 
  dec_eq. induction m.
  - simpl. auto.
  - destruct IHm. simpl. destruct (lst_mem n0 n).
  -- auto.
  -- right. unfold not. intros. inversion H. auto.
  -- right. unfold not. simpl. intros. destruct H. contradiction.
Qed.

Instance lst_eq_dec (m : Lst) (n : Lst) : (Dec (lst_eq m n)).
Proof. 
  dec_eq. unfold lst_eq. destruct (lst_subset_dec m n). destruct dec.
  destruct (lst_subset_dec n m). destruct dec. auto.
  right. unfold not. intros. destruct H. contradiction.
  right. unfold not. intros. destruct H. contradiction.
Qed.

Fixpoint lst_union (lst_union_arg0 : Lst) (lst_union_arg1 : Lst) : Lst
           := match lst_union_arg0, lst_union_arg1 with
              | nil, x => x
              | cons n x, y => if lst_mem n y then lst_union x y else cons n (lst_union x y)
              end.

Lemma subset_refl : forall (x : Lst), lst_subset x x.
Proof. Admitted.

Theorem goal40_by_subset_refl_2 : forall (x : Lst) (y : Lst), lst_subset x y -> lst_eq (lst_union x y) y.
Proof.
  intros.
  induction x.
  - simpl. unfold lst_eq. split.
    + apply subset_refl.
    + findlemma. Admitted.
    (* apply subset_refl.
  - simpl. simpl in H. destruct H. rewrite H0. apply IHx. assumption.
Qed. *)
