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

Fixpoint mem (mem_arg0 : Nat) (mem_arg1 : Lst) : bool
           := match mem_arg0, mem_arg1 with
              | _, nil => false
              | x, cons y z => orb (Nat_beq x y) (mem x z)
              end.

Definition lst_mem := mem.

Fixpoint lst_intersection (lst_intersection_arg0 : Lst) (lst_intersection_arg1 : Lst) : Lst
           := match lst_intersection_arg0, lst_intersection_arg1 with
              | nil, x => nil
              | cons n x, y => if lst_mem n y then cons n (lst_intersection x y) else lst_intersection x y
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

Theorem goal44 : forall (x : Nat) (y : Lst) (z : Lst), and (eq (lst_mem x y) true) (eq (lst_mem x z) true) -> eq (lst_mem x (lst_intersection y z)) true.
Proof.
  intros.
  destruct H.
  induction y.
  - discriminate.
  - simpl in H. apply orb_prop in H. destruct H.
    + simpl. destruct (lst_mem n z) eqn:?.
      * simpl. rewrite H. reflexivity.
      * findlemma. Admitted.

      (* rewrite (Nat_beq_eq x n H) in H0. rewrite H0 in Heqb. discriminate.
    + apply IHy in H. simpl. destruct (lst_mem n z) eqn:?.
      * simpl. rewrite H. apply orb_true_r.
      * assumption.
Qed. *)
