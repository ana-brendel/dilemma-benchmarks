
From QuickChick Require Import QuickChick.
Inductive natural : Type := Succ : natural -> natural |  Zero : natural.
Derive Show for natural. Derive Arbitrary for natural.  Instance Dec_Eq_natural : Dec_Eq natural. Proof. dec_eq. Qed.
Inductive lst : Type :=  Nil : lst | Cons : natural -> lst -> lst .

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

Lemma append_nil : forall (x : lst), append x Nil = x.
Proof.
   intros.
   induction x.
   - reflexivity.
   - simpl. rewrite IHx. reflexivity.
Qed.

Lemma append_assoc : forall (x y z : lst), append (append x y) z = append x (append y z).
Proof.
   intros.
   induction x.
   - reflexivity.
   - simpl. rewrite IHx. reflexivity.
Qed.

Lemma rev_append : forall (x y : lst), rev (append x y) = append (rev y) (rev x).
Proof.
   intros.
   induction x.
   - simpl. rewrite append_nil. reflexivity.
   - simpl. rewrite IHx. rewrite append_assoc. reflexivity.
Qed.

Lemma rev_rev : forall (x : lst), rev (rev x) = x.
Proof.
   intros.
   induction x.
   - reflexivity.
   - simpl. rewrite rev_append. simpl. rewrite IHx. reflexivity.
Qed.

Theorem theorem0 : forall (x : lst) (y : lst), eq (rev (append (rev x) (rev y))) (append y x).
Proof.
   induction x.
   - intros. simpl. rewrite rev_rev. rewrite append_nil. reflexivity.
   - intros. simpl. rewrite rev_append. simpl. rewrite (eq_refl : Cons n Nil = rev (Cons n Nil)). rewrite IHx. rewrite rev_rev. simpl. reflexivity.
Qed.
              

