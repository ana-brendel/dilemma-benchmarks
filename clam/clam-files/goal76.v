

Inductive natural : Type := Succ : natural -> natural |  Zero : natural.

Inductive lst : Type := Nil : lst |Cons : natural -> lst -> lst .

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

Fixpoint revflat (revflat_arg0 : tree) : lst
           := match revflat_arg0 with
              | Leaf => Nil
              | Node d l r => append (revflat l) (Cons d (revflat r))
              end.

Fixpoint qrevaflat (qrevaflat_arg0 : tree) (qrevaflat_arg1 : lst) : lst
           := match qrevaflat_arg0, qrevaflat_arg1 with
              | Leaf, x => x
              | Node d l r, x => qrevaflat l (Cons d (qrevaflat r x))
              end.

Lemma append_assoc : forall (x y z : lst), append (append x y) z = append x (append y z).
Proof.
   intros.
   induction x.
   - reflexivity.
   - simpl. rewrite IHx. reflexivity.
Qed.

Theorem theorem0 : forall (x : tree) (y : lst), eq (append (revflat x) y) (qrevaflat x y).
Proof.
   induction x.
   - intros. simpl. rewrite append_assoc. simpl. rewrite IHx2. rewrite IHx1. reflexivity.
   - reflexivity.
   
Qed.

