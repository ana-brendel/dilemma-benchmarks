Require Import Nat Arith.

Inductive Nat : Type := succ : Nat -> Nat |  zero : Nat.

Inductive Lst : Type := cons : Nat -> Lst -> Lst |  nil : Lst.

Inductive Tree : Type := node : Nat -> Tree -> Tree -> Tree |  leaf : Tree.

Inductive Pair : Type := mkpair : Nat -> Nat -> Pair
with ZLst : Type := zcons : Pair -> ZLst -> ZLst |  znil : ZLst.

Fixpoint plus (plus_arg0 : Nat) (plus_arg1 : Nat) : Nat
           := match plus_arg0, plus_arg1 with
              | zero, n => n
              | succ n, m => succ (plus n m)
              end.

Fixpoint even (even_arg0 : Nat) : bool
           := match even_arg0 with
              | zero => true
              | succ n => negb (even n)
              end.

Lemma lem: forall m n, even (plus m n) = negb (even (plus m (succ n))).
Proof.
induction m.
  - intros. simpl. rewrite <- IHm. reflexivity.
  - intros. simpl. unfold negb. destruct (even n). reflexivity. reflexivity.
Qed.

Theorem theorem0 : forall (x : Nat), eq (even (plus x x)) true.
Proof.
induction x.
- simpl. rewrite <- lem. assumption.
- reflexivity.
Qed.
