

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

Fixpoint even (even_arg0 : natural) : bool
           := match even_arg0 with
              | Zero => true
              | Succ n => negb (even n)
              end.


Lemma lem: forall m n, even (plus m n) = negb (even (plus m (Succ n))).
Proof.
induction m.
  - intros. simpl. rewrite <- IHm. reflexivity.
  - intros. simpl. unfold negb. destruct (even n). reflexivity. reflexivity.
Qed.

Lemma lem2: forall n, plus n Zero = n.
Proof.
induction n.
  - simpl. rewrite IHn. reflexivity.
  - reflexivity.
Qed.


(* An alternaturale proof strategy is to prove that plus is commutative as a helper lemma,
and then this theorem can be proven without induction. *)

Theorem theorem0 : forall (x : natural) (y : natural), eq (even (plus x y)) (even (plus y x)).
Proof.
induction x.
- intros. simpl. rewrite IHx. rewrite lem. unfold negb.
  destruct (even (plus y (Succ x))). reflexivity. reflexivity.
- intros. simpl. rewrite lem2. reflexivity.
Qed.

