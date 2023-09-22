
From QuickChick Require Import QuickChick.
Inductive natural : Type := Succ : natural -> natural |  Zero : natural.
Derive Show for natural. Derive Arbitrary for natural.  Instance Dec_Eq_natural : Dec_Eq natural. Proof. dec_eq. Qed.
Inductive lst : Type := Cons : natural -> lst -> lst |  Nil : lst.

Inductive tree : Type := Node : natural -> tree -> tree -> tree |  Leaf : tree.

Inductive Pair : Type := mkpair : natural -> natural -> Pair
with Zlst : Type := zcons : Pair -> Zlst -> Zlst |  znil : Zlst.

Fixpoint even (even_arg0 : natural) : bool
           := match even_arg0 with
              | Zero => true
              | Succ n => negb (even n)
              end.

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

Lemma lem: forall l1 l2 n, negb (even (len (append l1 l2))) = even (len (append l1 (Cons n l2))).
Proof.
induction l1.
  - intros. simpl. rewrite (IHl1 l2 n0). reflexivity.
  - intros. simpl. reflexivity.
Qed.

Lemma lem3: forall l, append l Nil = l.
Proof.
induction l.
  - simpl. rewrite IHl. reflexivity.
  - reflexivity.
Qed.

Theorem theorem0 : forall (x : lst) (y : lst), eq (even (len (append x y))) (even (len (append y x))).
Proof.
induction x.
  - intros. simpl. rewrite <- lem. f_equal. rewrite IHx. reflexivity.
  - intros. simpl. rewrite lem3. reflexivity.
Qed.

