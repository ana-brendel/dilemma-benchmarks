Require Import Nat Arith.

Inductive Nat : Type := succ : Nat -> Nat |  zero : Nat.

Inductive Lst : Type := cons : Nat -> Lst -> Lst |  nil : Lst.

Inductive Tree : Type := node : Nat -> Tree -> Tree -> Tree |  leaf : Tree.

Inductive Pair : Type := mkpair : Nat -> Nat -> Pair
with ZLst : Type := zcons : Pair -> ZLst -> ZLst |  znil : ZLst.

Fixpoint eqb (n m: Nat) : bool :=
  match n, m with
    | zero, zero => true
    | zero, succ _ => false
    | succ _, zero => false
    | succ n', succ m' => eqb n' m'
  end.

Fixpoint less (less_arg0 : Nat) (less_arg1 : Nat) : bool
           := match less_arg0, less_arg1 with
              | x, zero => false
              | zero, succ x => true
              | succ x, succ y => less x y
              end.

Fixpoint len (len_arg0 : Lst) : Nat
           := match len_arg0 with
              | nil => zero
              | cons x y => succ (len y)
              end.

Fixpoint insort (insort_arg0 : Nat) (insort_arg1 : Lst) : Lst
           := match insort_arg0, insort_arg1 with
              | i, nil => cons i nil
              | i, cons x y => if less i x then cons i (cons x y) else cons x (insort i y)
              end.

Fixpoint sort (sort_arg0 : Lst) : Lst
           := match sort_arg0 with
              | nil => nil
              | cons x y => insort x (sort y)
              end.

Theorem insort_len: forall (n: Nat) (x : Lst), len (insort n x) = succ (len x).
  intro.
  induction x.
  { simpl. destruct (less n n0).
    {
      simpl. reflexivity.
    }
    {
      simpl. rewrite IHx.
      reflexivity.
    }
  }
  {
    simpl. reflexivity.
  }
Qed.

Theorem theorem0 : forall (x : Lst), eq (len (sort x)) (len x).
Proof.
  induction x; simpl; try reflexivity.
  rewrite insort_len.
  f_equal; assumption.
Qed.
