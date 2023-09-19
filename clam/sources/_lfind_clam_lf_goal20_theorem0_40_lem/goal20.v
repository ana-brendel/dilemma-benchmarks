Load LFindLoad.
From lfind Require Import LFind.
Unset Printing Notations.
Set Printing Implicit.



Inductive natural : Type := Succ : natural -> natural |  Zero : natural.

Inductive lst : Type := Cons : natural -> lst -> lst |  Nil : lst.

Inductive tree : Type := Node : natural -> tree -> tree -> tree |  Leaf : tree.

Inductive Pair : Type := mkpair : natural -> natural -> Pair
with Zlst : Type := zcons : Pair -> Zlst -> Zlst |  znil : Zlst.

Fixpoint even (even_arg0 : natural) : bool
           := match even_arg0 with
              | Zero => true
              | Succ n => negb (even n)
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


Lemma lem: forall l1 l2 n, even (len (lfappend l1 l2)) = negb (even (len (lfappend l1 (Cons n l2)))).
Proof.
induction l1.
  - intros. simpl. rewrite (IHl1 l2 n0). reflexivity.
  - intros. simpl. unfold negb. destruct (even (len l2)). reflexivity. reflexivity.
Qed.

Theorem theorem0 : forall (x : lst), eq (even (len (lfappend x x))) true.
Proof.
induction x.
  - simpl.  
  lfind_coqsynth.  assumption. 
Admitted.

