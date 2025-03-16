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

Fixpoint rev (rev_arg0 : Lst) : Lst
           := match rev_arg0 with
              | nil => nil
              | cons x y => append (rev y) (cons x nil)
              end.

Lemma len_cons_succ: forall l1 l2 n, succ (len (append l1 l2)) = len (append l1 (cons n l2)).
Proof. Admitted.

Lemma lem : forall l, len l = len (append l nil).
Proof.
  induction l.
  - reflexivity.
  - simpl. f_equal. apply IHl.
Qed.

Theorem goal5_by_len_cons_succ : forall (x : Lst), eq (len (rev x)) (len x).
Proof.
induction x.
  - reflexivity.
  - simpl. rewrite <- IHx. 
  findlemma. Admitted.

  (* rewrite <- (len_cons_succ (rev x) nil n). 
  rewrite <- lem. reflexivity.
Qed. *)
