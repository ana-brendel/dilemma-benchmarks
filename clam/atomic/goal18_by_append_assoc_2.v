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

Lemma append_nil: forall l, append l nil = l.
Proof. Admitted.

Theorem goal18_by_append_assoc_2 : forall (x : Lst) (y : Lst), eq (rev (append (rev x) y)) (append (rev y) x).
Proof.
induction x.
  - intros. simpl. rewrite append_nil. reflexivity.
  - intros. simpl. rewrite <- append_assoc. rewrite IHx. simpl. 
  findlemma. Admitted.
  
  (* rewrite <- append_assoc. simpl. reflexivity.
Qed. *)

