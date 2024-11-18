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

Lemma lem2: forall n, plus n zero = n.
Proof.
induction n.
  - simpl. rewrite IHn. reflexivity.
  - reflexivity.
Qed.


(* An alternate proof strategy is to prove that plus is commutative as a helper lemma,
and then this theorem can be proven without induction. *)

Theorem theorem0 : forall (x : Nat) (y : Nat), eq (even (plus x y)) (even (plus y x)).
Proof.
induction x.
- intros. simpl. rewrite IHx. rewrite lem. unfold negb.
  destruct (even (plus y (succ x))). reflexivity. reflexivity.
- intros. simpl. rewrite lem2. reflexivity.
Qed.

