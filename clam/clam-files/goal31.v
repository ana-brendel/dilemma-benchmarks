

Inductive natural : Type := Succ : natural -> natural |  Zero : natural.

Inductive lst : Type := Cons : natural -> lst -> lst |  Nil : lst.

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
   - simpl. rewrite IHx. reflexivity.
   - reflexivity.
Qed.

Lemma append_nil : forall (x : lst), append x Nil = x.
Proof.
   intros.
   induction x.
   - simpl. rewrite IHx. reflexivity.
   - reflexivity.
   
Qed.

Lemma qreva_nil : forall (x y : lst), qreva x y = append (qreva x Nil) y.
Proof.
   intro.
   induction x.
   - intros. simpl. rewrite IHx. rewrite (IHx (Cons n Nil)). rewrite append_assoc. reflexivity.
   - reflexivity.
   
Qed.

Lemma qreva_append : forall (x y : lst), qreva (append x y) Nil = append (qreva y Nil) (qreva x Nil).
Proof.
   intros.
   induction x.
   - simpl. rewrite qreva_nil. rewrite IHx. rewrite append_assoc. rewrite (qreva_nil x (Cons n Nil)). reflexivity.
   - simpl. rewrite append_nil. reflexivity.
Qed.

Theorem qreva_qreva : forall (x : lst), eq (qreva (qreva x Nil) Nil) x.
Proof.
   intros.
   induction x.
   - simpl. rewrite (qreva_nil x). rewrite qreva_append. rewrite IHx. simpl. reflexivity.
   - reflexivity.
Qed.

