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


Lemma even_odd_append_len : forall l1 l2 n, even (len (append l1 l2)) = negb (even (len (append l1 (cons n l2)))).
Proof.
induction l1.
  - intros. simpl. rewrite (IHl1 l2 n0). reflexivity.
  - intros. simpl. unfold negb. destruct (even (len l2)). reflexivity. reflexivity.
Qed.

Theorem goal20_by_even_odd_append_len : forall (x : Lst), eq (even (len (append x x))) true.
Proof.
induction x.
  - simpl. 
  findlemma. Admitted.

  (* rewrite <- even_odd_append_len. assumption.
  - reflexivity.
Qed. *)

