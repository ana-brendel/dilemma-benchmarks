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

Fixpoint double (double_arg0 : Nat) : Nat
           := match double_arg0 with
              | zero => zero
              | succ n => succ (succ (double n))
              end.

Lemma lem: forall m n, succ (plus m n) = plus m (succ n).
Proof.
   induction m.
   - intros. simpl. rewrite IHm. reflexivity.
   - intros. reflexivity.
Qed.

Theorem theorem0 : forall (x : Nat), eq (double x) (plus x x).
Proof.
   induction x.
   - simpl. f_equal. rewrite IHx. apply lem.
   - reflexivity.
Qed.
