From LFindToo Require Import LFindToo.
From QuickChick Require Import QuickChick.

Require Import Nat Arith.

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

Lemma qreva_nil : forall (x y : Lst), qreva x y = append (qreva x nil) y.
Proof. Admitted.

Lemma qreva_append : forall (x y : Lst), qreva (append x y) nil = append (qreva y nil) (qreva x nil).
Proof. Admitted.

(* Theorem qreva_qreva *)
Theorem goal31_by_qreva_nil: forall (x : Lst), eq (qreva (qreva x nil) nil) x.
Proof.
  intros.
  induction x.
  - reflexivity.
  - simpl. 
  findlemma. Admitted.
  (* rewrite (qreva_nil x). rewrite qreva_append. rewrite IHx. simpl. reflexivity.
Qed. *)
