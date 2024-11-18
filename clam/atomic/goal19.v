Require Import Nat Arith.

Inductive Nat : Type := succ : Nat -> Nat |  zero : Nat.

Inductive Lst : Type := cons : Nat -> Lst -> Lst |  nil : Lst.

Inductive Tree : Type := node : Nat -> Tree -> Tree -> Tree |  leaf : Tree.

Inductive Pair : Type := mkpair : Nat -> Nat -> Pair
with ZLst : Type := zcons : Pair -> ZLst -> ZLst |  znil : ZLst.

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

Lemma lem: forall l n, cons n (rev l) = rev (append l (cons n nil)).
Proof.
intros. induction l.
  - simpl. rewrite <- IHl. reflexivity.
  - reflexivity.
Qed.

Lemma lem2: forall l, rev (rev l) = l.
Proof.
induction l.
  - simpl. rewrite <- lem. rewrite IHl. reflexivity.
  - reflexivity.
Qed.

Theorem theorem0 : forall (x : Lst) (y : Lst), eq (append (rev (rev x)) y) (rev (rev (append x y))).
Proof.
  intros. rewrite lem2. rewrite lem2. reflexivity.
Qed.


