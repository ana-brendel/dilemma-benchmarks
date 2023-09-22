

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


Lemma lem: forall l1 l2 n, even (len (append l1 l2)) = negb (even (len (append l1 (Cons n l2)))).
Proof.
induction l1.
  - intros. simpl. rewrite (IHl1 l2 n0). reflexivity.
  - intros. simpl. unfold negb. destruct (even (len l2)). reflexivity. reflexivity.
Qed.

Theorem theorem0 : forall (x : lst), eq (even (len (append x x))) true.
Proof.
induction x.
  - simpl. rewrite <- lem. assumption.
  - reflexivity.
Qed.

