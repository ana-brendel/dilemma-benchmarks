

Inductive natural : Type :=   Zero : natural | Succ : natural -> natural .

Inductive lst : Type :=  Nil : lst | Cons : natural -> lst -> lst .

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

Fixpoint qmult (qmult_arg0 : natural) (qmult_arg1 : natural) (qmult_arg2 : natural) : natural
           := match qmult_arg0, qmult_arg1, qmult_arg2 with
              | Zero, n, m => m
              | Succ n, m, p => qmult n m (plus p m)
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

Lemma plus_qmult : forall (x y z a : natural), plus (qmult x y z) a = qmult x y (plus z a).
Proof.
   intro.
   induction x.
   - reflexivity.
   - intros. simpl. rewrite IHx. rewrite plus_assoc. rewrite (plus_commut y a). 
     rewrite <- plus_assoc. reflexivity.
Qed.

Theorem mult_eq_qmult : forall (x : natural) (y : natural), eq (mult x y) (qmult x y Zero).
Proof.
   intros.
   induction x.
   - reflexivity.
   - simpl. rewrite IHx. rewrite plus_qmult. reflexivity.
Qed.

