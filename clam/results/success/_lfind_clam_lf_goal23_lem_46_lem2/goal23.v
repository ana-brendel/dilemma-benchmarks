Load LFindLoad.
From lfind Require Import LFind.
Unset Printing Notations.
Set Printing Implicit.



Inductive natural : Type := Succ : natural -> natural |  Zero : natural.

Inductive lst : Type := Cons : natural -> lst -> lst |  Nil : lst.

Inductive tree : Type := Node : natural -> tree -> tree -> tree |  Leaf : tree.

Inductive Pair : Type := mkpair : natural -> natural -> Pair
with Zlst : Type := zcons : Pair -> Zlst -> Zlst |  znil : Zlst.

Fixpoint half (half_arg0 : natural) : natural
           := match half_arg0 with
              | Zero => Zero
              | Succ Zero => Zero
              | Succ (Succ n) => Succ (half n)
              end.

Fixpoint lfappend (lfappend_arg0 : lst) (lfappend_arg1 : lst) : lst
           := match lfappend_arg0, lfappend_arg1 with
              | Nil, x => x
              | Cons x y, z => Cons x (lfappend y z)
              end.

Fixpoint len (len_arg0 : lst) : natural
           := match len_arg0 with
              | Nil => Zero
              | Cons x y => Succ (len y)
              end.

Lemma lem3: forall l, lfappend l Nil = l.
Proof.
induction l.
  - simpl. rewrite IHl. reflexivity.
  - reflexivity.
Qed.

Lemma lem2: forall l1 l2 n, Succ (len (lfappend l1 l2)) = len (lfappend l1 (Cons n l2)).
Proof.
induction l1.
- intros. simpl. rewrite <- IHl1. reflexivity.
- intros. reflexivity.
Qed.

Lemma lem: forall l1 l2, len (lfappend l1 l2) = len (lfappend l2 l1).
Proof. induction l1.
  - intros.  simpl.  rewrite IHl1.  
  lfind_coqsynth.  reflexivity. 
Admitted.

