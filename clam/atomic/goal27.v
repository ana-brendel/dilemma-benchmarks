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

Fixpoint qreva (qreva_arg0 : Lst) (qreva_arg1 : Lst) : Lst
           := match qreva_arg0, qreva_arg1 with
              | nil, x => x
              | cons z x, y => qreva x (cons z y)
              end.

Theorem append_nil: forall (l: Lst), append l nil = l.
Proof.
  induction l.
  { simpl. f_equal. assumption. }
  { simpl. reflexivity. }
Qed.

Theorem append_assoc:
  forall (l1 l2 l3: Lst), append l1 (append l2 l3) = append (append l1 l2) l3.
Proof.
  induction l1; induction l2; induction l3; try (simpl; reflexivity).
  { simpl. rewrite <- IHl1. f_equal. }
  { simpl. rewrite 2 append_nil. reflexivity. }
  { simpl. rewrite append_nil.  reflexivity. }
  { simpl. rewrite 2 append_nil. reflexivity. }
Qed.

Theorem qreva_append : forall (x y : Lst), (qreva x y) = (append (rev x) y).
Proof.
  induction x; induction y; simpl; try reflexivity.
  { rewrite IHx.
    rewrite <- append_assoc.
    f_equal. }
  { rewrite IHx.
    rewrite append_nil.
    reflexivity. }
Qed.

Theorem theorem0 : forall (x : Lst), eq (rev x) (qreva x nil).
Proof.
  intros.
  rewrite qreva_append.
  rewrite append_nil.
  reflexivity.
Qed.
