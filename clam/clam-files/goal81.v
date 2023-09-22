
From QuickChick Require Import QuickChick.
Inductive natural : Type := Succ : natural -> natural |  Zero : natural.
Derive Show for natural. Derive Arbitrary for natural.  Instance Dec_Eq_natural : Dec_Eq natural. Proof. dec_eq. Qed.
Inductive lst : Type :=  Nil : lst |  Cons : natural -> lst -> lst.

Inductive tree : Type := Node : natural -> tree -> tree -> tree |  Leaf : tree.

Inductive Pair : Type := mkpair : natural -> natural -> Pair
with Zlst : Type := zcons : Pair -> Zlst -> Zlst |  znil : Zlst.

Fixpoint append (append_arg0 : lst) (append_arg1 : lst) : lst
           := match append_arg0, append_arg1 with
              | Nil, x => x
              | Cons x y, z => Cons x (append y z)
              end.

Fixpoint rev (rev_arg0 : lst) : lst
           := match rev_arg0 with
              | Nil => Nil
              | Cons x y => append (rev y) (Cons x Nil)
              end.

Fixpoint qreva (qreva_arg0 : lst) (qreva_arg1 : lst) : lst
           := match qreva_arg0, qreva_arg1 with
              | Nil, x => x
              | Cons z x, y => qreva x (Cons z y)
              end.

Lemma append_assoc : forall (x y z : lst), append (append x y) z = append x (append y z).
Proof.
   intros.
   induction x.
   - reflexivity.
   - simpl. rewrite IHx. reflexivity.
Qed.

Lemma qreva_rev : forall (x y : lst), qreva x y = append (rev x) y.
Proof.
   induction x.
   - reflexivity.
   - intros. simpl. rewrite IHx. rewrite append_assoc. simpl. reflexivity.
Qed.

Theorem theorem0 : forall (x : lst) (y : lst), eq (qreva (qreva x y) Nil) (append (rev y) x).
Proof.
   induction x.
   - intros. simpl. rewrite qreva_rev. reflexivity.
   - intros. simpl. rewrite IHx. simpl. rewrite append_assoc. simpl. reflexivity.
Qed.

