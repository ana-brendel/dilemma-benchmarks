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

Lemma append_nil : forall (x : Lst), append x nil = x.
Proof. Admitted.

Lemma rev_append : forall (x y : Lst), rev (append x y) = append (rev y) (rev x).
Proof. Admitted.

Lemma rev_rev : forall (x : Lst), rev (rev x) = x.
Proof. Admitted.

Theorem goal80_by_rev_rev_1 : forall (x : Lst) (y : Lst), eq (rev (append (rev x) (rev y))) (append y x).
Proof.
  induction x.
  - intros. simpl. 
  findlemma. Admitted.
  (* rewrite rev_rev. rewrite append_nil. reflexivity.
  - intros. simpl. rewrite rev_append. simpl. rewrite (eq_refl : cons n nil = rev (cons n nil)). rewrite IHx. rewrite rev_rev. simpl. reflexivity. *)
Qed.

