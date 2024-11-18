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

Fixpoint len (len_arg0 : Lst) : Nat
           := match len_arg0 with
              | nil => zero
              | cons x y => succ (len y)
              end.

Lemma lem : forall l1 l2 n, succ (len (append l1 l2)) = len (append l1 (cons n l2)).
Proof.
   induction l1.
   - intros. simpl. f_equal. apply IHl1.
   - intros. reflexivity.
Qed.

Lemma lem2 : forall l, len l = len (append l nil).
Proof.
   induction l.
   - simpl. f_equal. apply IHl.
   - reflexivity.
Qed.

Theorem theorem0 : forall (x : Lst) (y : Lst), eq (len (append x y)) (len (append y x)).
Proof.
   induction x.
   - intros. simpl. rewrite IHx. apply lem.
   - intros. simpl. apply lem2.
Qed.

