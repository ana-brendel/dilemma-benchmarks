Load LFindLoad.
From lfind Require Import LFind.
Unset Printing Notations.
Set Printing Implicit.


From QuickChick Require Import QuickChick.
Inductive natural : Type := Succ : natural -> natural |  Zero : natural.
Derive Show for natural. Derive Arbitrary for natural.  Instance Dec_Eq_natural : Dec_Eq natural. Proof. dec_eq. Qed.
Inductive lst : Type :=   Nil : lst | Cons : natural -> lst -> lst.

Inductive tree : Type := Node : natural -> tree -> tree -> tree |  Leaf : tree.

Inductive Pair : Type := mkpair : natural -> natural -> Pair
with Zlst : Type := zcons : Pair -> Zlst -> Zlst |  znil : Zlst.

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

Fixpoint rotate (rotate_arg0 : natural) (rotate_arg1 : lst) : lst
           := match rotate_arg0, rotate_arg1 with
              | Zero, x => x
              | Succ n, Nil => Nil
              | Succ n, Cons y x => rotate n (lfappend x (Cons y Nil))
              end.

Lemma lfappend_nil : forall (x : lst), lfappend x Nil = x.
Proof.
   intros.
   induction x.
   - reflexivity.
   - simpl. rewrite IHx. reflexivity.
Qed.

Lemma lfappend_assoc : forall (x y z : lst), lfappend (lfappend x y) z = lfappend x (lfappend y z).
Proof.
   intros.
   induction x.
   - reflexivity.
   - simpl. rewrite IHx. reflexivity.
Qed.

Lemma rotate_len_lfappend : forall (x y : lst), rotate (len x) (lfappend x y) = lfappend y x.
Proof.
   intro.
   induction x.
   - intros. simpl. rewrite lfappend_nil. reflexivity.
   - intros.  simpl.  
   lfind_coqsynth.  rewrite IHx.  lfind_coqsynth.  reflexivity. 
Admitted.

