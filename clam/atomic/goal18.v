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

Lemma append_assoc: forall l1 l2 l3, 
  append l1 (append l2 l3) = append (append l1 l2) l3.
Proof.
induction l1.
  - simpl. intros. rewrite IHl1. reflexivity.
  - reflexivity.
Qed.

Lemma lem3: forall l, append l nil = l.
Proof.
induction l.
  - simpl. rewrite IHl. reflexivity.
  - reflexivity.
Qed.

Theorem theorem0 : forall (x : Lst) (y : Lst), eq (rev (append (rev x) y)) (append (rev y) x).
Proof.
induction x.
  - intros. simpl. rewrite <- append_assoc. rewrite IHx. simpl. rewrite <- append_assoc. simpl. reflexivity.
  - intros. simpl. rewrite lem3. reflexivity.
Qed.

