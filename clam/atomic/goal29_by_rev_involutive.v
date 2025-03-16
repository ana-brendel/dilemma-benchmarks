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

Theorem append_nil: forall (l: Lst), append l nil = l.
Proof. Admitted.

Theorem append_assoc: forall (l1 l2 l3: Lst), append l1 (append l2 l3) = append (append l1 l2) l3.
Proof. Admitted.

Theorem append_rev_cons: forall (l1 l2: Lst) (x: Nat), rev (append l1 (cons x l2)) = append (rev l2) (cons x (rev l1)).
Proof. Admitted.

Theorem rev_append: forall (l1 l2: Lst), rev (append l1 l2) = append (rev l2) (rev l1).
Proof. Admitted.

Theorem rev_involutive : forall (x : Lst), eq (rev (rev x)) x.
Proof. Admitted.

Theorem qreva_append : forall (x y : Lst), (qreva x y) = (append (rev x) y).
Proof. Admitted.

Theorem rev_qreva_nil : forall (x : Lst), eq (rev x) (qreva x nil).
Proof. Admitted.

Theorem goal29_by_rev_involutive : forall (x : Lst), eq (rev (qreva x nil)) x.
Proof.
  intro.
  rewrite <- rev_qreva_nil.
  findlemma. Admitted.
  (* apply rev_involutive.
Qed. *)
