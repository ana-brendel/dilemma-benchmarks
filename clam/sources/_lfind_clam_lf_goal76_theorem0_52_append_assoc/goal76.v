Load LFindLoad.
From lfind Require Import LFind.
Unset Printing Notations.
Set Printing Implicit.



Inductive natural : Type := Succ : natural -> natural |  Zero : natural.

Inductive lst : Type := Nil : lst |Cons : natural -> lst -> lst .

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

Fixpoint revflat (revflat_arg0 : tree) : lst
           := match revflat_arg0 with
              | Leaf => Nil
              | Node d l r => lfappend (revflat l) (Cons d (revflat r))
              end.

Fixpoint qrevaflat (qrevaflat_arg0 : tree) (qrevaflat_arg1 : lst) : lst
           := match qrevaflat_arg0, qrevaflat_arg1 with
              | Leaf, x => x
              | Node d l r, x => qrevaflat l (Cons d (qrevaflat r x))
              end.

Lemma lfappend_assoc : forall (x y z : lst), lfappend (lfappend x y) z = lfappend x (lfappend y z).
Proof.
   intros.
   induction x.
   - reflexivity.
   - simpl. rewrite IHx. reflexivity.
Qed.

Theorem theorem0 : forall (x : tree) (y : lst), eq (lfappend (revflat x) y) (qrevaflat x y).
Proof.
   induction x.
   - intros.  simpl.  
   lfind_coqsynth.  simpl.  rewrite IHx2.  rewrite IHx1.  reflexivity. 
Admitted.

