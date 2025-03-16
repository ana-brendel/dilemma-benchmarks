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

Definition leq (x : Nat) (y : Nat) : bool :=
  Nat_beq x y || less x y.

Fixpoint insort (insort_arg0 : Nat) (insort_arg1 : Lst) : Lst
           := match insort_arg0, insort_arg1 with
              | i, nil => cons i nil
              | i, cons x y => if less i x then cons i (cons x y) else cons x (insort i y)
              end.

Fixpoint sorted (sorted_arg0 : Lst) : bool
           := match sorted_arg0 with
              | nil => true
              | cons x l => match l with
                | nil => true
                | cons z y => andb (sorted l) (leq x z)
                end
              end.

Fixpoint sort (sort_arg0 : Lst) : Lst
           := match sort_arg0 with
              | nil => nil
              | cons x y => insort x (sort y)
              end.

Lemma not_less : forall (x y : Nat), less x y = false -> leq y x = true.
Proof.
  intros.
  generalize dependent y.
  induction x.
  - intros. unfold leq. destruct y.
    + reflexivity.
    + discriminate.
  - intros. unfold leq. destruct y.
    + reflexivity.
    + simpl in H. apply IHx in H. unfold leq in H. simpl. assumption.
Qed.

Theorem goal62_2 : forall (x : Lst) (y : Nat), sorted x = true -> sorted (insort y x) = true.
Proof.
  intros.
  induction x.
  - reflexivity.
  - destruct x.
    + simpl. destruct (less y n) eqn:?.
      * simpl. unfold leq. rewrite Heqb. apply orb_true_r.
      * simpl. apply not_less. assumption.
    + simpl in H. apply andb_true_iff in H. destruct H. simpl in IHx. simpl. destruct (less y n) eqn:?.
      * simpl. rewrite H. rewrite H0. unfold leq. rewrite Heqb. apply orb_true_r.
      * destruct (less y n0) eqn:?.
        -- simpl. rewrite H. 
        findlemma. Admitted.
        
        (* apply not_less in Heqb. rewrite Heqb. unfold leq. rewrite Heqb0. rewrite orb_true_r. reflexivity.
        -- simpl. apply IHx in H. simpl in H. rewrite H. rewrite H0. reflexivity.
Qed. *)
