Require Import Nat Arith.

Inductive Nat : Type := succ : Nat -> Nat |  zero : Nat.

Inductive Lst : Type := cons : Nat -> Lst -> Lst |  nil : Lst.

Inductive Tree : Type := node : Nat -> Tree -> Tree -> Tree |  leaf : Tree.

Inductive Pair : Type := mkpair : Nat -> Nat -> Pair
with ZLst : Type := zcons : Pair -> ZLst -> ZLst |  znil : ZLst.

Fixpoint drop (drop_arg0 : Nat) (drop_arg1 : Lst) : Lst
           := match drop_arg0, drop_arg1 with
              | x, nil => nil
              | zero, x => x
              | succ x, cons y z => drop x z
              end.

Theorem drop_nil: forall (x: Nat), drop x nil = nil.
Proof.
  induction x ; simpl; reflexivity.
Qed.

Theorem drop_cons: forall (x n: Nat) (l: Lst), drop (succ x) (cons n l) = drop x l.
  induction l; induction x; simpl; reflexivity.
Qed.

Theorem drop_cons_assoc: forall (x1 x2 x3: Nat) (l: Lst),
    drop x1 (drop x2 (cons x3 l)) = drop x2 (drop x1 (cons x3 l)).
Proof.
  induction x1; induction x2; try (simpl; reflexivity).
  { induction l.
    { rewrite 2 drop_cons. rewrite <- IHx1.
      rewrite IHx2. rewrite 2 drop_cons.
      induction l.
      { rewrite IHx1. reflexivity. }
      { rewrite 3 drop_nil. reflexivity. }
    }
    { simpl. rewrite 2 drop_nil. reflexivity. }
  }
  { intros. simpl. destruct (drop x1 l); reflexivity. }
  { intros. simpl. destruct (drop x2 l); reflexivity. }
Qed.

Theorem drop_assoc : forall (x : Nat) (y : Nat) (z : Lst), eq (drop x (drop y z)) (drop y (drop x z)).
Proof.
  induction z.
  { rewrite 2 drop_cons_assoc. reflexivity. }
  { rewrite 3 drop_nil. reflexivity. }
Qed.

Theorem theorem0 : forall (x : Nat) (y : Nat) (w : Nat) (z : Lst), eq (drop w (drop x (drop y z))) (drop y (drop x (drop w z))).
Proof.
  intros.
  rewrite (drop_assoc w x).
  rewrite (drop_assoc w y).
  rewrite (drop_assoc x y).
  reflexivity.
Qed.
