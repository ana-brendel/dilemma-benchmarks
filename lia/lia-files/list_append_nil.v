Require Import Nat Arith.

Inductive Lst : Type := cons : nat -> Lst -> Lst |  nil : Lst.

Fixpoint append (append_arg0 : Lst) (append_arg1 : Lst) : Lst
           := match append_arg0, append_arg1 with
              | nil, x => x
              | cons x y, z => cons x (append y z)
              end.

Theorem theorem0 : forall (x : Lst), eq x (append x nil).
Proof.
   intros.
   induction x.
   - simpl. rewrite <- IHx. reflexivity.
   - simpl. reflexivity.
Qed.

