Load LFindLoad.
From lfind Require Import LFind.
Unset Printing Notations.
Set Printing Implicit.


From QuickChick Require Import QuickChick.
Inductive natural : Type := Succ : natural -> natural |  Zero : natural.
Derive Show for natural. Derive Arbitrary for natural.  Instance Dec_Eq_natural : Dec_Eq natural. Proof. dec_eq. Qed.
Inductive lst : Type := Cons : natural -> lst -> lst |  Nil : lst.

Inductive tree : Type := Node : natural -> tree -> tree -> tree |  Leaf : tree.

Inductive Pair : Type := mkpair : natural -> natural -> Pair
with Zlst : Type := zcons : Pair -> Zlst -> Zlst |  znil : Zlst.

Fixpoint lfappend (append_arg0 : lst) (append_arg1 : lst) : lst
           := match append_arg0, append_arg1 with
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

Theorem append_nil: forall (l: lst), lfappend l Nil = l.
Proof.
   induction l.
   { simpl. f_equal. assumption. }
   { simpl. reflexivity. }
Qed.

Theorem append_assoc:
   forall (l1 l2 l3: lst), lfappend l1 (lfappend l2 l3) = lfappend (lfappend l1 l2) l3.
Proof.
   induction l1; induction l2; induction l3; try (simpl; reflexivity).
   { simpl. rewrite <- IHl1. f_equal. }
   { simpl. rewrite 2 append_nil. reflexivity. }
   { simpl. rewrite append_nil.  reflexivity. }
   { simpl.  
   lfind_coqsynth.  reflexivity.  }
Admitted.
