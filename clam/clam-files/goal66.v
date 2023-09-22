Require Import Arith Bool.
From QuickChick Require Import QuickChick.
Inductive natural : Type := Succ : natural -> natural |  Zero : natural.
Derive Show for natural. Derive Arbitrary for natural.  Instance Dec_Eq_natural : Dec_Eq natural. Proof. dec_eq. Qed.
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
Lemma negb_invol: forall b, negb (negb b) = b.
Proof.
   intros.
   induction b.
   - simpl. auto.
   - simpl. auto.
Qed.

Theorem theorem0 : forall (x : natural) (y : natural), eq (even (plus x y)) (even (plus x (Succ (Succ y)))).
Proof.
   intros.
  induction x.
  - simpl. rewrite IHx. reflexivity.
  - simpl. rewrite negb_invol. reflexivity.
Qed.

