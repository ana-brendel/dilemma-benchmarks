Require Import Nat Arith.

Inductive Lst : Type := nil : Lst | cons : nat -> Lst -> Lst.

Inductive Queue : Type := queue : Lst -> Lst -> Queue.

Fixpoint len (len_arg0 : Lst) : nat
           := match len_arg0 with
              | nil => 0
              | cons x y => plus 1 (len y)
              end.

Fixpoint append (append_arg0 : Lst) (append_arg1 : Lst) : Lst
           := match append_arg0, append_arg1 with
              | nil, x => x
              | cons x y, z => cons x (append y z)
              end.

Fixpoint rev2 (rev2_arg0 : Lst) (rev2_arg1 : Lst) : Lst
           := match rev2_arg0, rev2_arg1 with
              | nil, a => a
              | cons x t, a => rev2 t (cons x a)
              end.

Definition qrev (x : Lst) : Lst
  := rev2 x nil.

Definition amortizeQueue (x : Lst) (y : Lst) : Queue
  := if leb (len y) (len x) then queue x y else queue (append x (qrev y)) nil.

Definition isAmortized (isAmortized_arg0 : Queue) : bool
           := let 'queue x y := isAmortized_arg0 in
              leb (len y) (len x).

Theorem theorem0 : forall (x : Lst) (y : Lst), eq (isAmortized (amortizeQueue x y)) true.
Proof.
  intros.
  unfold amortizeQueue.
  destruct (len y <=? len x) eqn:?.
  - simpl. assumption.
  - simpl. reflexivity.
Qed.
