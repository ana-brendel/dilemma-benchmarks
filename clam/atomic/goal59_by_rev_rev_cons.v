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

Lemma rev_rev_cons : forall (x : Lst) (y : Nat), eq (rev (append x (cons y nil))) (cons y (rev x)).
Proof. induction x. - intros. reflexivity. - intros. simpl. rewrite IHx. reflexivity. Qed.

Theorem goal59_by_rev_rev_cons : forall (x : Lst) (y : Lst) (z : Nat), eq (rev (append x (append y (cons z nil)))) (cons z (rev (append x y))).
Proof.
induction x.
- intros. simpl. 
findlemma. Admitted.
(* apply rev_rev_cons.
- intros. simpl. rewrite IHx. reflexivity.
Qed. *)


