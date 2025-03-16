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

Theorem eqb_refl: forall n, eqb n n = true.
Proof.
  induction n; simpl.
  { assumption. }
  { reflexivity. }
Qed.

Theorem eqb_not_eq: forall n m, n <> m -> eqb n m = false.
Proof.
  induction n; induction m; intro; simpl; try reflexivity.
  apply IHn. intro. rewrite H0 in H. apply H. reflexivity.
  exfalso. apply H. reflexivity.
Qed.

Theorem goal47_1 : forall (x : Nat) (y : Nat) (z : Lst), not (eq x y) -> eq (mem x (insort y z)) (mem x z).
Proof.
  intros.
  induction z.
    simpl. destruct (less y n).
    simpl. 
    findlemma. Admitted.

    (* rewrite eqb_not_eq; auto.
    simpl. f_equal. assumption.
    simpl. rewrite eqb_not_eq; auto.
Qed. *)
