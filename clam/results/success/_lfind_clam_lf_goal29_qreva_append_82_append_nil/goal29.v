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
Theorem lfappend_nil: forall (l: lst), lfappend l Nil = l.
Proof.
   induction l.
   { simpl. f_equal. assumption. }
   { simpl. reflexivity. }
Qed.
              
Theorem lfappend_assoc:
   forall (l1 l2 l3: lst), lfappend l1 (lfappend l2 l3) = lfappend (lfappend l1 l2) l3.
Proof.
   induction l1; induction l2; induction l3; try (simpl; reflexivity).
   { simpl. rewrite <- IHl1. f_equal. }
   { simpl. rewrite 2 lfappend_nil. reflexivity. }
   { simpl. rewrite lfappend_nil.  reflexivity. }
   { simpl. rewrite 2 lfappend_nil. reflexivity. }
Qed.

Theorem lfappend_rev_cons:
   forall (l1 l2: lst) (x: natural),
   rev (lfappend l1 (Cons x l2)) = lfappend (rev l2) (Cons x (rev l1)).
Proof.
   induction l1; induction l2; try (simpl; reflexivity).
   { intro. simpl. rewrite IHl1. simpl. rewrite <- lfappend_assoc.
   f_equal. }
   { intro. simpl. rewrite IHl1. simpl. reflexivity. }
Qed.

Theorem rev_lfappend: forall (l1 l2: lst), rev (lfappend l1 l2) = lfappend (rev l2) (rev l1).
Proof.
   induction l1.
   { induction l2.
   { simpl. rewrite lfappend_rev_cons.
      rewrite <- 2 lfappend_assoc.
      f_equal. }
   { simpl. rewrite lfappend_nil. reflexivity. }
   }
   { intro. simpl. rewrite lfappend_nil. reflexivity. }
Qed.

Theorem rev_involutive : forall (x : lst), eq (rev (rev x)) x.
Proof.
   induction x.
   { simpl. rewrite rev_lfappend. simpl. f_equal.
   assumption. }
   { simpl. reflexivity. }
Qed.

Theorem qreva_lfappend : forall (x y : lst), (qreva x y) = (lfappend (rev x) y).
Proof.
   induction x; induction y; simpl; try reflexivity.
   { rewrite IHx.
   rewrite <- lfappend_assoc.
   f_equal. }
   { rewrite IHx.
 lfind_coqsynth. 
Admitted.
