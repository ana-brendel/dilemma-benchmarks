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

Lemma append_assoc: forall l1 l2 l3, append l1 (append l2 l3) = append (append l1 l2) l3.
Proof. Admitted.

Lemma rev_rev_cons: forall l n, cons n (rev l) = rev (append l (cons n nil)).
Proof. Admitted.

Lemma rev_rev: forall l, rev (rev l) = l.
Proof. Admitted.

Lemma append_nil: forall l, append l nil = l.
Proof. Admitted.

Theorem goal11_by_append_nil: forall (x : Lst) (y : Lst), eq (rev (append (rev x) (rev y))) (append y x).
Proof.
 induction x.
 - intros. simpl. rewrite rev_rev. 
 findlemma. Admitted.
 
 (* rewrite append_nil. reflexivity.
 - intros. simpl. rewrite <- append_assoc. simpl. 
   rewrite rev_rev_cons. rewrite IHx. rewrite <- append_assoc. reflexivity.
Qed. *)
