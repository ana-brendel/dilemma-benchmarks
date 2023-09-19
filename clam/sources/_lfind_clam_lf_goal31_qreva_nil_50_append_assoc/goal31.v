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

Lemma lfappend_assoc : forall (x y z : lst), lfappend (lfappend x y) z = lfappend x (lfappend y z).
Proof.
   intros.
   induction x.
   - simpl. rewrite IHx. reflexivity.
   - reflexivity.
Qed.

Lemma lfappend_nil : forall (x : lst), lfappend x Nil = x.
Proof.
   intros.
   induction x.
   - simpl. rewrite IHx. reflexivity.
   - reflexivity.
   
Qed.

Lemma qreva_nil : forall (x y : lst), qreva x y = lfappend (qreva x Nil) y.
Proof.
   intro.
   induction x.
   - intros.  simpl.  rewrite IHx.  rewrite (IHx (Cons n Nil)).  
   lfind_coqsynth.  reflexivity. 
Admitted.



