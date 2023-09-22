

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

Fixpoint half (half_arg0 : natural) : natural
           := match half_arg0 with
              | Zero => Zero
              | Succ Zero => Zero
              | Succ (Succ n) => Succ (half n)
              end.

Theorem plus_comm: forall (n m: natural), plus n m = plus m n.
Proof.
   induction n; induction m.
   { simpl. rewrite IHn. rewrite <- IHm. simpl. rewrite IHn. reflexivity. }
   { simpl. rewrite IHn. simpl. reflexivity. }
   { simpl. rewrite <- IHm. simpl. reflexivity. }
   { reflexivity. }
Qed.

Theorem theorem0 : forall (x : natural) (y : natural), eq (half (plus x y)) (half (plus y x)).
Proof.
   intros.
   rewrite plus_comm.
   reflexivity.
Qed.

