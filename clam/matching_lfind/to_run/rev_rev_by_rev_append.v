From Dilemma Require Import Dilemma.
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

Theorem append_nil: forall (l: Lst), append l nil = l.
Proof. induction l. { simpl. reflexivity. } { simpl. f_equal. assumption. } Qed.

Theorem append_assoc: forall (l1 l2 l3: Lst), append l1 (append l2 l3) = append (append l1 l2) l3.
Proof. induction l1. - reflexivity. - simpl. intros. rewrite IHl1. reflexivity. Qed.

Theorem append_rev_cons: forall (l1 l2: Lst) (x: Nat), rev (append l1 (cons x l2)) = append (rev l2) (cons x (rev l1)).
Proof.
  induction l1; induction l2; try (simpl; reflexivity).
  + intro. simpl. rewrite IHl1. simpl. reflexivity. 
  + intro. simpl. rewrite IHl1. simpl. rewrite <- append_assoc. f_equal. 
Qed.

Theorem rev_append : forall (l1 l2: Lst), rev (append l1 l2) = append (rev l2) (rev l1).
Proof.
  induction l1.
  + intro. simpl. rewrite append_nil. reflexivity.
  + induction l2.
  ++ simpl. rewrite append_nil. reflexivity. 
  ++ simpl.
  rewrite append_rev_cons.
    rewrite <- 2 append_assoc.
    f_equal.
Qed.

Theorem theorem0 : forall (x : Lst), eq (rev (rev x)) x.
Proof.
  induction x.
  - simpl. reflexivity.
  - simpl. 
  dilemma. Admitted.
  
  (* rewrite rev_append. simpl. f_equal. assumption.
Qed. *)