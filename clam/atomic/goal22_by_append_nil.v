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

Fixpoint even (even_arg0 : Nat) : bool
           := match even_arg0 with
              | zero => true
              | succ n => negb (even n)
              end.

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

Lemma even_odd_append_len: forall l1 l2 n, negb (even (len (append l1 l2))) = even (len (append l1 (cons n l2))).
Proof. Admitted.

Lemma append_nil: forall l, append l nil = l.
Proof. Admitted.

Theorem goal22_by_append_nil : forall (x : Lst) (y : Lst), eq (even (len (append x y))) (even (len (append y x))).
Proof.
induction x.
  - intros. simpl. 
  findlemma. Admitted.
  (* rewrite append_nil. reflexivity.
  - intros. simpl. rewrite <- even_odd_append_len. f_equal. rewrite IHx. reflexivity.
Qed. *)

