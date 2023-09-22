
From QuickChick Require Import QuickChick.
Inductive natural : Type := Succ : natural -> natural |  Zero : natural.
Derive Show for natural. Derive Arbitrary for natural.  Instance Dec_Eq_natural : Dec_Eq natural. Proof. dec_eq. Qed.
Inductive lst : Type := Cons : natural -> lst -> lst |  Nil : lst.

Inductive tree : Type := Node : natural -> tree -> tree -> tree |  Leaf : tree.

Inductive Pair : Type := mkpair : natural -> natural -> Pair
with Zlst : Type := zcons : Pair -> Zlst -> Zlst |  znil : Zlst.

Fixpoint append (append_arg0 : lst) (append_arg1 : lst) : lst
           := match append_arg0, append_arg1 with
              | Nil, x => x
              | Cons x y, z => Cons x (append y z)
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
              | Succ n, Cons y x => rotate n (append x (Cons y Nil))
              end.

Lemma append_assoc: forall l1 l2 l3, 
  append l1 (append l2 l3) = append (append l1 l2) l3.
Proof.
induction l1.
  - simpl. intros. rewrite IHl1. reflexivity.
  - reflexivity.
Qed.

Lemma lem3: forall l, append l Nil = l.
Proof.
induction l.
  - simpl. rewrite IHl. reflexivity.
  - reflexivity.
Qed.

Theorem theorem0 : forall (x : lst) (y : lst), eq (rotate (len x) (append x y)) (append y x).
Proof.
induction x.
- intros. simpl. 
  rewrite <- append_assoc. rewrite IHx. 
  rewrite <- append_assoc. reflexivity.
- intros. simpl. rewrite lem3. reflexivity.
Qed.


