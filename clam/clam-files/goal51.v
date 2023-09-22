

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

(* No helper lemma needed. *)
Theorem theorem0 : forall (x : natural) (y : natural), eq (plus x (Succ y)) (Succ (plus x y)).
Proof.
induction x.
- intros. simpl. rewrite IHx. reflexivity.
- intros. reflexivity.
Qed.

