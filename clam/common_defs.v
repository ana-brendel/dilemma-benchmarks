From LFindToo Require Import LFindToo.
From QuickChick Require Import QuickChick.

Require Import Nat Arith.

Inductive Nat : Type := zero : Nat | succ : Nat -> Nat .

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

Fixpoint plus (plus_arg0 : Nat) (plus_arg1 : Nat) : Nat
:= match plus_arg0, plus_arg1 with
    | zero, n => n
    | succ n, m => succ (plus n m)
    end.

Fixpoint mult (mult_arg0 : Nat) (mult_arg1 : Nat) : Nat
:= match mult_arg0, mult_arg1 with
    | zero, n => zero
    | succ n, m => plus (mult n m) m
    end.

Fixpoint append (append_arg0 : Lst) (append_arg1 : Lst) : Lst
:= match append_arg0, append_arg1 with
    | nil, x => x
    | cons x y, z => cons x (append y z)
    end.
   
Fixpoint rev (rev_arg0 : Lst) : Lst
:= match rev_arg0 with
    | nil => nil
    | cons x y => append (rev y) (cons x nil)
    end.

Fixpoint qreva (qreva_arg0 : Lst) (qreva_arg1 : Lst) : Lst
:= match qreva_arg0, qreva_arg1 with
    | nil, x => x
    | cons z x, y => qreva x (cons z y)
    end.

Fixpoint exp (exp_arg0 : Nat) (exp_arg1 : Nat) : Nat
:= match exp_arg0, exp_arg1 with
    | n, zero => succ zero
    | n, succ m => mult (exp n m) n
    end.

Fixpoint qexp (qexp_arg0 : Nat) (qexp_arg1 : Nat) (qexp_arg2 : Nat) : Nat
:= match qexp_arg0, qexp_arg1, qexp_arg2 with
    | n, zero, m => m
    | n, succ m, p => qexp n m (mult p n)
    end.

Fixpoint less (less_arg0 : Nat) (less_arg1 : Nat) : bool
:= match less_arg0, less_arg1 with
    | x, zero => false
    | zero, succ x => true
    | succ x, succ y => less x y
    end.

Fixpoint drop (drop_arg0 : Nat) (drop_arg1 : Lst) : Lst
  := match drop_arg0, drop_arg1 with
    | x, nil => nil
    | zero, x => x
    | succ x, cons y z => drop x z
    end.

Fixpoint len (len_arg0 : Lst) : Nat
:= match len_arg0 with
    | nil => zero
    | cons x y => succ (len y)
    end.

Scheme Equality for Nat.

(* NO LEMMAS USED *)

Lemma Nat_beq_refl : forall (n : Nat), Nat_beq n n = true.
Proof. intros. induction n. reflexivity. assumption. Qed.

Lemma Nat_beq_eq : forall (x y : Nat), Nat_beq x y = true -> x = y.
Proof.
  intros. generalize dependent y. induction x.
  - intros. destruct y. reflexivity. discriminate. 
  - intros. destruct y. 
  + discriminate H.  
  + f_equal. simpl in H. apply IHx. assumption.
Qed.

Lemma less_not_refl : forall (n : Nat), less n n = false.
Proof. intros. induction n. simpl. reflexivity. assumption. Qed.

Lemma plus_succ : forall (x y : Nat), plus x (succ y) = succ (plus x y).
Proof. intros. induction x. - reflexivity. - simpl. rewrite IHx. reflexivity. Qed.

Lemma plus_assoc : forall (x y z : Nat), plus (plus x y) z = plus x (plus y z).
Proof. intros. induction x. - reflexivity. - simpl. rewrite IHx. reflexivity. Qed.

Lemma plus_zero : forall (x : Nat), plus x zero = x.
Proof. intros. induction x. - reflexivity. - simpl. rewrite IHx. reflexivity. Qed.

Theorem append_nil: forall (l: Lst), append l nil = l.
Proof. induction l. simpl. reflexivity. simpl. f_equal. assumption. Qed.

Theorem append_assoc: forall (l1 l2 l3: Lst), append l1 (append l2 l3) = append (append l1 l2) l3.
Proof. intros. induction l1. - reflexivity. - simpl. rewrite IHl1. reflexivity. Qed.

Lemma mult_zero : forall (x : Nat), mult x zero = zero.
Proof. intros. induction x. - reflexivity. - simpl. rewrite IHx. reflexivity. Qed.

Lemma rev_rev_cons: forall l n, cons n (rev l) = rev (append l (cons n nil)).
Proof. intros. induction l. - reflexivity. - simpl. rewrite <- IHl. reflexivity. Qed.

Lemma drop_succ: forall n1 n2 l, drop (succ n1) (drop n2 l) = drop n1 (drop (succ n2) l).
Proof. 
  intros. generalize dependent n1. generalize dependent n2. induction l.
  - intros. assert (forall n, drop n nil = nil).
    + intros. destruct n. reflexivity. reflexivity.
    + rewrite H. rewrite H. rewrite H. reflexivity.
  - intros. assert (forall n x l, drop (succ n) (cons x l) = drop n l). 
    + intros. reflexivity.
    + destruct n2.
    * simpl. destruct l. reflexivity. reflexivity.
    * rewrite H. rewrite H. rewrite <- IHl. reflexivity.
Qed.

Lemma len_cons_succ : forall l1 l2 n, succ (len (append l1 l2)) = len (append l1 (cons n l2)).
Proof. induction l1. intros. reflexivity. intros. simpl. f_equal. apply IHl1. Qed.

Lemma len_append_nil : forall l, len l = len (append l nil).
Proof. induction l. reflexivity. simpl. f_equal. apply IHl. Qed.

Lemma plus_succ_swap: forall m n, plus (succ m) n = plus m (succ n).
Proof. intros. simpl. induction m. reflexivity. simpl. rewrite IHm. reflexivity. Qed.

(* **************************************************************************************************** *)
(* NEED HELPERS *)
(* **************************************************************************************************** *)

Lemma plus_commut : forall (x y : Nat), plus x y = plus y x.
Proof. 
  intros. induction x. 
  - (* HELPER LEMMA $ plus_commut_by_plus_zero $ *)
  rewrite plus_zero. reflexivity. 
  - simpl. 
  (* HELPER LEMMA $ plus_commut_by_plus_succ $ *)
  rewrite plus_succ. rewrite IHx. reflexivity. Qed.

Lemma mult_succ : forall (x y : Nat), plus (mult x y) x = mult x (succ y).
Proof. intros. induction x.
    - reflexivity.
    - simpl. 
    (* HELPER LEMMA $ mult_succ_by_plus_succ_1 $ *)
    rewrite plus_succ. 
    (* HELPER LEMMA $ mult_succ_by_plus_assoc_1 $ *)
    rewrite plus_assoc. 
    (* HELPER LEMMA $ mult_succ_by_plus_commut $ *)
    rewrite (plus_commut y x). 
    (* HELPER LEMMA $ mult_succ_by_plus_assoc_2 $ *)
    rewrite <- plus_assoc. 
    rewrite IHx. 
    (* HELPER LEMMA $ mult_succ_by_plus_succ_2 $ *)
    rewrite plus_succ. reflexivity.
Qed.

Lemma mult_commut : forall (x y : Nat), mult x y = mult y x.
Proof.
  intros.
  induction x.
  - (* HELPER LEMMA $ mult_commut_by_mult_zero $ *)
  rewrite mult_zero. reflexivity.
  - simpl. rewrite IHx. 
  (* HELPER LEMMA $ mult_commut_by_mult_succ $ *)
  rewrite mult_succ. reflexivity.
Qed.

Lemma distrib : forall (x y z : Nat), mult (plus x y) z = plus (mult x z) (mult y z).
Proof.
  intros.
  induction x.
  - reflexivity.
  - simpl. rewrite IHx. 
  (* HELPER LEMMA $ distrib_by_plus_assoc_1 $ *)
  rewrite plus_assoc. 
  (* HELPER LEMMA $ distrib_by_plus_commut $ *)
  rewrite (plus_commut (mult y z) z). 
  (* HELPER LEMMA $ distrib_by_plus_assoc_3 $ *)
  rewrite <- plus_assoc. reflexivity.
Qed.

Lemma mult_assoc : forall (x y z : Nat), mult (mult x y) z = mult x (mult y z).
Proof.
  intros.
  induction x.
  - reflexivity.
  - simpl. 
  (* HELPER LEMMA $ mult_assoc_by_distrib $ *)
  rewrite distrib. rewrite IHx. reflexivity.
Qed.

Theorem append_rev_cons: forall (l1 l2: Lst) (x: Nat), rev (append l1 (cons x l2)) = append (rev l2) (cons x (rev l1)).
Proof.
  induction l1; induction l2; try (simpl; reflexivity).
  - intro. simpl. rewrite IHl1. simpl. reflexivity.
  - intro. simpl. rewrite IHl1. simpl. 
  (* HELPER LEMMA $ append_rev_cons_by_append_assoc $ *)
  rewrite <- append_assoc. f_equal.
Qed.

Theorem rev_append: forall (l1 l2: Lst), rev (append l1 l2) = append (rev l2) (rev l1).
Proof.
  induction l1.
  intro. simpl. 
  (* HELPER LEMMA $ rev_append_by_append_nil_1 $ *)
  rewrite append_nil. reflexivity.
  induction l2.
  + simpl. 
  (* HELPER LEMMA $ rev_append_by_append_nil_2 $ *)
  rewrite append_nil. reflexivity.
  + simpl. 
  (* HELPER LEMMA $ rev_append_by_append_rev_cons$ *)
  rewrite append_rev_cons. 
  (* HELPER LEMMA $ rev_append_by_append_assoc $ *)
  rewrite <- 2 append_assoc. f_equal. 
Qed.

Theorem rev_involutive : forall (x : Lst), eq (rev (rev x)) x.
Proof.
  induction x.
  simpl. reflexivity.
  simpl. 
  (* HELPER LEMMA $ rev_involutive_by_rev_append $ *)
  rewrite rev_append. simpl. f_equal. assumption.
Qed.

Lemma qreva_nil : forall (x y : Lst), qreva x y = append (qreva x nil) y.
Proof.
  intro.
  induction x.
  - reflexivity.
  - intros. simpl. rewrite IHx. rewrite (IHx (cons n nil)). 
  (* HELPER LEMMA $ qreva_nil_by_append_assoc $ *)
  rewrite <- append_assoc. reflexivity.
Qed.

Lemma qreva_append : forall (x y : Lst), qreva (append x y) nil = append (qreva y nil) (qreva x nil).
Proof.
  intros.
  induction x.
  - simpl. 
  (* HELPER LEMMA $ qreva_append_by_append_nil $ *)
  rewrite append_nil. reflexivity.
  - simpl. 
  (* HELPER LEMMA $ qreva_append_by_qreva_nil_1 $ *)
  rewrite qreva_nil. rewrite IHx. 
  (* HELPER LEMMA $ qreva_append_by_append_assoc $ *)
  rewrite <- append_assoc. 
  (* HELPER LEMMA $ qreva_append_by_qreva_nil_2 $ *)
  rewrite (qreva_nil x (cons n nil)). reflexivity.
Qed.

Lemma rev_rev : forall l, rev (rev l) = l.
Proof.
induction l.
  - reflexivity.
  - simpl. 
  (* HELPER LEMMA $ rev_rev_by_rev_rev_cons $ *)
  rewrite <- rev_rev_cons. rewrite IHl. reflexivity.
Qed.

Lemma qreva_rev : forall (x y : Lst), qreva x y = append (rev x) y.
Proof.
  induction x.
  - reflexivity.
  - intros. simpl. rewrite IHx. 
  (* HELPER LEMMA $ qreva_rev_by_append_assoc $ *)
  rewrite <- append_assoc. simpl. reflexivity.
Qed.

Lemma len_append: forall l1 l2, len (append l1 l2) = len (append l2 l1).
induction l1.
  - intros. simpl. 
  (* HELPER LEMMA $ len_append_by_append_nil $ *)
  rewrite append_nil. reflexivity.
  - intros. simpl. rewrite IHl1. 
  (* HELPER LEMMA $ len_append_by_len_cons_succ $ *)
  rewrite <- len_cons_succ. reflexivity.
Qed.