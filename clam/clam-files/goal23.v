

Inductive natural : Type := Succ : natural -> natural |  Zero : natural.

Inductive lst : Type := Cons : natural -> lst -> lst |  Nil : lst.

Inductive tree : Type := Node : natural -> tree -> tree -> tree |  Leaf : tree.

Inductive Pair : Type := mkpair : natural -> natural -> Pair
with Zlst : Type := zcons : Pair -> Zlst -> Zlst |  znil : Zlst.

Fixpoint half (half_arg0 : natural) : natural
           := match half_arg0 with
              | Zero => Zero
              | Succ Zero => Zero
              | Succ (Succ n) => Succ (half n)
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

Lemma lem3: forall l, append l Nil = l.
Proof.
induction l.
  - simpl. rewrite IHl. reflexivity.
  - reflexivity.
Qed.

Lemma lem2: forall l1 l2 n, Succ (len (append l1 l2)) = len (append l1 (Cons n l2)).
Proof.
induction l1.
- intros. simpl. rewrite <- IHl1. reflexivity.
- intros. reflexivity.
Qed.

Lemma lem: forall l1 l2, len (append l1 l2) = len (append l2 l1).
Proof. induction l1.
  - intros. simpl. rewrite IHl1. rewrite <- lem2. reflexivity.
  - intros. simpl. rewrite lem3. reflexivity.
Qed.

Theorem theorem0 : forall (x : lst) (y : lst), eq (half (len (append x y))) (half (len (append y x))).
Proof.
intros. f_equal. apply lem.
Qed.
