
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
Lemma negb_invol: forall b, negb (negb b) = b.
Proof.
   intros.
   induction b.
   - simpl. auto.
   - simpl. auto.
Qed.
              
Theorem theorem0 : forall (w : lst) (z : lst) (x : natural) (y : natural), eq (even (len (append w z))) (even (len (append w (Cons x (Cons y z))))).
Proof.
   intros.
   induction w.
   - simpl. rewrite IHw. reflexivity.
   - simpl. rewrite negb_invol. reflexivity.
Qed.

