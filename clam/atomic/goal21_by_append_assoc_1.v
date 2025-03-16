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

Fixpoint len (len_arg0 : Lst) : Nat
           := match len_arg0 with
              | nil => zero
              | cons x y => succ (len y)
              end.

Fixpoint rotate (rotate_arg0 : Nat) (rotate_arg1 : Lst) : Lst
           := match rotate_arg0, rotate_arg1 with
              | zero, x => x
              | succ n, nil => nil
              | succ n, cons y x => rotate n (append x (cons y nil))
              end.

Lemma append_assoc: forall l1 l2 l3, append l1 (append l2 l3) = append (append l1 l2) l3.
Proof. Admitted.

Lemma append_nil: forall l, append l nil = l.
Proof. Admitted.

Theorem goal21_by_append_assoc_1 : forall (x : Lst) (y : Lst), eq (rotate (len x) (append x y)) (append y x).
Proof.
induction x.
- intros. simpl. rewrite append_nil. reflexivity.
- intros. simpl. 
findlemma. Admitted.

(* rewrite <- append_assoc. rewrite IHx. rewrite <- append_assoc. reflexivity.
Qed. *)

