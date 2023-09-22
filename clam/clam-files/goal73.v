

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

Fixpoint mult (mult_arg0 : natural) (mult_arg1 : natural) : natural
           := match mult_arg0, mult_arg1 with
              | Zero, n => Zero
              | Succ n, m => plus (mult n m) m
              end.

(* This is repeated, we have proven mult_assoc as part of other theorems *)
Theorem theorem0 : forall (x : natural) (y : natural) (z : natural), eq (mult (mult x y) z) (mult x (mult y z)).
Proof.
Admitted.

