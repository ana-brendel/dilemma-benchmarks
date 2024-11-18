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

Fixpoint half (half_arg0 : Nat) : Nat
           := match half_arg0 with
              | zero => zero
              | succ zero => zero
              | succ (succ n) => succ (half n)
              end.


Lemma lem: forall m n, plus (succ m) n = plus m (succ n).
Proof.
intros. simpl. induction m.
  - simpl. rewrite IHm. reflexivity.
  - reflexivity.
Qed.

Theorem theorem0 : forall (x : Nat), eq (half (plus x x)) x.
Proof.
induction x.
  - simpl. destruct x.
    * simpl. rewrite <- lem. rewrite IHx. reflexivity.
    * reflexivity.
  - reflexivity.
Qed.


