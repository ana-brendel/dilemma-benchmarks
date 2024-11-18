Require Import Nat Arith.

Inductive Nat : Type := succ : Nat -> Nat |  zero : Nat.

Inductive Lst : Type := cons : Nat -> Lst -> Lst |  nil : Lst.

Inductive Tree : Type := node : Nat -> Tree -> Tree -> Tree |  leaf : Tree.

Inductive Pair : Type := mkpair : Nat -> Nat -> Pair
with ZLst : Type := zcons : Pair -> ZLst -> ZLst |  znil : ZLst.

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


Lemma lem: forall l1 l2 n, even (len (append l1 l2)) = negb (even (len (append l1 (cons n l2)))).
Proof.
induction l1.
  - intros. simpl. rewrite (IHl1 l2 n0). reflexivity.
  - intros. simpl. unfold negb. destruct (even (len l2)). reflexivity. reflexivity.
Qed.

Theorem theorem0 : forall (x : Lst), eq (even (len (append x x))) true.
Proof.
induction x.
  - simpl. rewrite <- lem. assumption.
  - reflexivity.
Qed.

