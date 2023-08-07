Load LFindLoad.
From lfind Require Import LFind.
Unset Printing Notations.
Set Printing Implicit.



Inductive natural : Type := Succ : natural -> natural |  Zero : natural.

Inductive lst : Type := Cons : natural -> lst -> lst |  Nil : lst.

Inductive tree : Type := Node : natural -> tree -> tree -> tree |  Leaf : tree.

Inductive Pair : Type := mkpair : natural -> natural -> Pair
with Zlst : Type := zcons : Pair -> Zlst -> Zlst |  zNil : Zlst.

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

Fixpoint qreva (qreva_arg0 : lst) (qreva_arg1 : lst) : lst
           := match qreva_arg0, qreva_arg1 with
              | Nil, x => x
              | Cons z x, y => qreva x (Cons z y)
              end.

Theorem plus_comm: forall (n m: natural), plus n m = plus m n.
Proof.
  induction n; induction m.
  { simpl. rewrite IHn. rewrite <- IHm. simpl. rewrite IHn. reflexivity. }
  { simpl. rewrite IHn. simpl. reflexivity. }
  { simpl. rewrite <- IHm. simpl. reflexivity. }
  { reflexivity. }
Qed.

Theorem theorem0 : forall (x : lst) (y : lst), eq (len (qreva x y)) (plus (len x) (len y)).
Proof.
  induction x; induction y; simpl; try reflexivity.
  + 
    rewrite plus_comm. simpl.
    rewrite IHx. simpl. rewrite plus_comm.
    simpl. reflexivity. 
  + 
 lfind_coqsynth.  simpl.  rewrite IHx.  
Admitted.
