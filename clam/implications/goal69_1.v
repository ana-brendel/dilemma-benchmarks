From LFindToo Require Import LFindToo.
From QuickChick Require Import QuickChick.

Require Import Nat Arith Bool.

Inductive Nat : Type := zero : Nat | succ : Nat -> Nat.

Scheme Equality for Nat.

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

Fixpoint less (less_arg0 : Nat) (less_arg1 : Nat) : bool
           := match less_arg0, less_arg1 with
              | _, zero => false
              | zero, succ x => true
              | succ x, succ y => less x y
              end.

Fixpoint mem (mem_arg0 : Nat) (mem_arg1 : Lst) : bool
           := match mem_arg0, mem_arg1 with
              | x, nil => false
              | x, cons y z => orb (Nat_beq x y) (mem x z)
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

Lemma Nat_beq_eq : forall (x y : Nat), Nat_beq x y = true -> x = y.
Proof.
  intros.
  generalize dependent y.
  induction x.
  - intros. destruct y.
    + reflexivity.
    + discriminate.
  - intros. destruct y.
    + discriminate.
    + simpl in H. apply IHx in H. rewrite H. reflexivity.
Qed.

Theorem goal69_1 : forall (x : Nat) (y : Nat) (z : Lst), not (eq x y) -> eq (mem x (insort y z)) true -> eq (mem x z) true.
Proof.
  intros.
  induction z.
  - simpl in H0. rewrite orb_false_r in H0. 
  findlemma. Admitted.
  
  (* apply Nat_beq_eq in H0. contradiction.
  - simpl in H0. simpl. destruct (less y n) eqn:?.
    + simpl in H0. apply orb_true_iff in H0. destruct H0.
      * apply Nat_beq_eq in H0. contradiction.
      * assumption.
    + simpl in H0. apply orb_true_iff in H0. destruct H0.
      * rewrite H0. reflexivity.
      * apply IHz in H0. rewrite H0. apply orb_true_r.
Qed. *)

