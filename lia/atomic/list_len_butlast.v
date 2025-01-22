From LFindToo Require Import LFindToo.

Require Import Bool.
Require Import Arith.

Require Import lia_atomic_benchmarks.Definitions.
Require Import lia_atomic_benchmarks.Decide.

Open Scope nat_scope.

Scheme Equality for lst.

Fixpoint append (append_arg0 : lst) (append_arg1 : lst) : lst
           := match append_arg0, append_arg1 with
              | Nil, x => x
              | Cons x y, z => cons x (append y z)
              end.

Fixpoint len (len_arg0 : lst) : nat
           := match len_arg0 with
              | Nil => 0
              | Cons x y => plus 1 (len y)
              end.

Fixpoint butlast (butlast_arg0 : lst) : lst
           := match butlast_arg0 with
              | Nil => Nil
              | Cons n x => if lst_beq x Nil then Nil else Cons n (butlast x)
              end.

Theorem theorem0 : forall (x : lst) (n : nat), eq (lst_beq (Cons n x) Nil) false.
Proof.
  reflexivity.
Qed.

Theorem theorem1 : forall (x : lst) (n : nat), eq (plus 1 (len (butlast (Cons n x)))) (len (Cons n x)).
Proof.
  intros.
  induction x.
  - reflexivity.
  - simpl. destruct (lst_beq x Nil) eqn:?.
    + destruct x.
      * reflexivity.
      * discriminate.
    + simpl. simpl in IHx. rewrite Heqb in IHx. simpl in IHx. rewrite IHx. reflexivity.
Qed.
