Load LFindLoad.
From lfind Require Import LFind.
Unset Printing Notations.
Set Printing Implicit.



Inductive natural : Type := Succ : natural -> natural |  Zero : natural.

Inductive lst : Type := Cons : natural -> lst -> lst |  Nil : lst.

Inductive tree : Type := Node : natural -> tree -> tree -> tree |  Leaf : tree.

Inductive Pair : Type := mkpair : natural -> natural -> Pair
with Zlst : Type := zcons : Pair -> Zlst -> Zlst |  znil : Zlst.

Fixpoint lfappend (lfappend_arg0 : lst) (lfappend_arg1 : lst) : lst
           := match lfappend_arg0, lfappend_arg1 with
              | Nil, x => x
              | Cons x y, z => Cons x (lfappend y z)
              end.

Fixpoint rev (rev_arg0 : lst) : lst
           := match rev_arg0 with
              | Nil => Nil
              | Cons x y => lfappend (rev y) (Cons x Nil)
              end.

Fixpoint qreva (qreva_arg0 : lst) (qreva_arg1 : lst) : lst
           := match qreva_arg0, qreva_arg1 with
              | Nil, x => x
              | Cons z x, y => qreva x (Cons z y)
              end.

Lemma lfappend_assoc: forall l1 l2 l3, 
  lfappend l1 (lfappend l2 l3) = lfappend (lfappend l1 l2) l3.
Proof.
induction l1.
  - simpl. intros. rewrite IHl1. reflexivity.
  - reflexivity.
Qed.

Theorem theorem0 : forall (x : lst) (y : lst), eq (qreva x y) (lfappend (rev x) y).
Proof.
induction x.
  - intros.  simpl.  
  lfind_coqsynth.  simpl.  rewrite <- IHx.  reflexivity. 
Admitted.
