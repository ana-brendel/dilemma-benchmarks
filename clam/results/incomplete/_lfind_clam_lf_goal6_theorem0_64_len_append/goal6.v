Load LFindLoad.
From lfind Require Import LFind.
Unset Printing Notations.
Set Printing Implicit.

Inductive natural : Type := Succ : natural -> natural |  Zero : natural.

Inductive lst : Type := Cons : natural -> lst -> lst |  Nil : lst.

Inductive tree : Type := Node : natural -> tree -> tree -> tree |  Leaf : tree.

Inductive Pair : Type := mkpair : natural -> natural -> Pair
with Zlst : Type := zcons : Pair -> Zlst -> Zlst |  znil : Zlst.

Fixpoint plus (plus_arg0 : natural) (plus_arg1 : natural) : natural
           := match plus_arg0, plus_arg1 with
              | Zero, n => n
              | Succ n, m => Succ (plus n m)
              end.

Fixpoint lfappend (append_arg0 : lst) (append_arg1 : lst) : lst
           := match append_arg0, append_arg1 with
              | Nil, x => x
              | Cons x y, z => Cons x (lfappend y z)
              end.

Fixpoint len (len_arg0 : lst) : natural
           := match len_arg0 with
              | Nil => Zero
              | Cons x y => Succ (len y)
              end.

Fixpoint rev (rev_arg0 : lst) : lst
           := match rev_arg0 with
              | Nil => Nil
              | Cons x y => lfappend (rev y) (Cons x Nil)
              end.

Theorem len_append: forall (l1 l2: lst), len (lfappend l1 l2) = plus (len l1) (len l2).
Proof.
  induction l1; induction l2; simpl.
  { f_equal. rewrite IHl1. simpl. reflexivity. }
  { f_equal. rewrite IHl1. simpl. reflexivity. }
  { reflexivity. }
  { reflexivity. }
Qed.

Theorem plus_comm: forall (n m: natural), plus n m = plus m n.
Proof.
  induction n; induction m.
  { simpl. rewrite IHn. rewrite <- IHm. simpl. rewrite IHn. reflexivity. }
  { simpl. rewrite IHn. simpl. reflexivity. }
  { simpl. rewrite <- IHm. simpl. reflexivity. }
  { reflexivity. }
Qed.

Theorem len_rev: forall (l: lst), len (rev l) = len l.
Proof.
  induction l; simpl.
  + 
    rewrite len_append. 
    rewrite plus_comm. simpl. f_equal. assumption. 
  +  reflexivity. 
Qed.

Theorem theorem0 : forall (x : lst) (y : lst), eq (len (rev (lfappend x y))) (plus (len x) (len y)).
Proof.
  intros.
  rewrite len_rev.
 lfind_coqsynth. 
Admitted.
