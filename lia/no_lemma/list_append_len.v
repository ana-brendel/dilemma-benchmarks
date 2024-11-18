Require Import Nat Arith.

Inductive Lst : Type := cons : nat -> Lst -> Lst |  nil : Lst.

Fixpoint append (append_arg0 : Lst) (append_arg1 : Lst) : Lst
           := match append_arg0, append_arg1 with
              | nil, x => x
              | cons x y, z => cons x (append y z)
              end.

Fixpoint len (len_arg0 : Lst) : nat
           := match len_arg0 with
              | nil => 0
              | cons x y => plus 1 (len y)
              end.

Theorem theorem0 : forall (x : Lst) (y : Lst), eq (len (append x y)) (plus (len x) (len y)).
Proof.
   intros.
   induction x.
   - simpl. rewrite IHx. reflexivity.
   - simpl. reflexivity.
Qed.

