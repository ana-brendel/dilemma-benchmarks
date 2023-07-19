Load LFindLoad.
From lfind Require Import LFind.
Unset Printing Notations.
Set Printing Implicit.



Inductive natural : Type :=Zero : natural | Succ : natural -> natural .

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

Fixpoint exp (exp_arg0 : natural) (exp_arg1 : natural) : natural
           := match exp_arg0, exp_arg1 with
              | n, Zero => Succ Zero
              | n, Succ m => mult (exp n m) n
              end.

Fixpoint qexp (qexp_arg0 : natural) (qexp_arg1 : natural) (qexp_arg2 : natural) : natural
           := match qexp_arg0, qexp_arg1, qexp_arg2 with
              | n, Zero, m => m
              | n, Succ m, p => qexp n m (mult p n)
              end.

Lemma plus_succ : forall (x y : natural), plus x (Succ y) = Succ (plus x y).
Proof.
   intros.
   induction x.
   - reflexivity.
   - simpl. rewrite IHx. reflexivity.
Qed.

Lemma plus_assoc : forall (x y z : natural), plus (plus x y) z = plus x (plus y z).
Proof.
   intros.
   induction x.
   - reflexivity.
   - simpl. rewrite IHx. reflexivity.
Qed.

Lemma plus_zero : forall (x : natural), plus x Zero = x.
Proof.
   intros.
   induction x.
   - reflexivity.
   - simpl. rewrite IHx. reflexivity.
Qed.

Lemma plus_commut : forall (x y : natural), plus x y = plus y x.
Proof.
   intros.
   induction x.
   - rewrite plus_zero. reflexivity.
   - simpl. rewrite plus_succ. rewrite IHx. reflexivity.
Qed.

Lemma mult_zero : forall (x : natural), mult x Zero = Zero.
Proof.
   intros.
   induction x.
   - reflexivity.
   - simpl. rewrite IHx. reflexivity.
Qed.

Lemma mult_succ : forall (x y : natural), plus (mult x y) x = mult x (Succ y).
Proof.
   intros.
   induction x.
   - reflexivity.
   - simpl.  rewrite plus_succ.  
   lfind_coqsynth.  rewrite (plus_commut y x).  lfind_coqsynth.  rewrite IHx.  rewrite plus_succ.  reflexivity. 
Admitted.
