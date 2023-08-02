Load LFindLoad.
From lfind Require Import LFind.
Unset Printing Notations.
Set Printing Implicit.


Require Import Arith.
From QuickChick Require Import QuickChick.
Inductive natural : Type := Succ : natural -> natural |  Zero : natural.
Derive Show for natural. Derive Arbitrary for natural.  Instance Dec_Eq_natural : Dec_Eq natural. Proof. dec_eq. Qed.
Inductive lst : Type := Cons : natural -> lst -> lst |  Nil : lst.

Inductive tree : Type := Node : natural -> tree -> tree -> tree |  Leaf : tree.

Inductive Pair : Type := mkpair : natural -> natural -> Pair
with Zlst : Type := zcons : Pair -> Zlst -> Zlst |  znil : Zlst.

Fixpoint less (less_arg0 : natural) (less_arg1 : natural) : bool
           := match less_arg0, less_arg1 with
              | x, Zero => false
              | Zero, Succ x => true
              | Succ x, Succ y => less x y
              end.

Fixpoint lfeqb (n m: natural) : bool :=
  match n, m with
    | Zero, Zero => true
    | Zero, Succ _ => false
    | Succ _, Zero => false
    | Succ n', Succ m' => lfeqb n' m'
  end.


Fixpoint count  (count_arg1 : lst) (count_arg0 : natural): natural
           := match  count_arg1,count_arg0 with
              | Nil, x => Zero
              | Cons y z, x => if lfeqb x y then Succ (count z x) else count z x
              end.

              Fixpoint insort  (insort_arg1 : lst) (insort_arg0 : natural) : lst
              := match insort_arg1, insort_arg0 with
                 |  Nil, i => Cons i Nil
                 | Cons x y, i => if less i x then Cons i (Cons x y) else Cons x (insort y i)
                 end.

                 Fixpoint sort (sort_arg0 : lst) : lst
                 := match sort_arg0 with
                    | Nil => Nil
                    | Cons x y => insort (sort y) x
                    end.

Theorem lfeqb_refl: forall n, lfeqb n n = true.
Proof.
   induction n; simpl.
   { assumption. }
   { reflexivity. }
Qed.

Theorem lfeqb_diff: forall (x y: natural), x <> y -> lfeqb x y = false.
Proof.
   induction x; induction y; simpl.
   {
   intros.
   apply IHx.
   intro.
   subst.
   assert (Succ y = Succ y). reflexivity.
   apply H in H0.
   destruct H0.
   }
   {
   intros. reflexivity.
   }
   {
   intros. reflexivity.
   }
   {
   intros.
   assert (Zero = Zero). reflexivity.
   apply H in H0.
   destruct H0.
   }
Qed.

Theorem lfeqb_elim: forall (x y: natural), Bool.Is_true (lfeqb x y) -> x = y.
Proof.
   induction x; induction y; simpl in *.
   intros.
   {
   apply IHx in H.
   subst.
   reflexivity.
   }
   {
   intros.
   destruct H.
   }
   { intros; destruct H. }
   {
   intros. reflexivity.
   }
Qed.

Theorem count_cons: forall (x: natural) (l: lst), count (Cons x l) x = Succ (count l x).
Proof.
   intros.
   simpl.
   rewrite lfeqb_refl.
   reflexivity.
Qed.

Theorem count_insort: forall (x: natural) (l: lst), count (insort l x) x= Succ (count l x).
Proof.
   intros.
   induction l.
   {
   simpl in *.
   destruct (less x n).
   {
      rewrite count_cons.
      f_equal.
   }
   {
      destruct (lfeqb x n) eqn:E.
      {
         apply Bool.Is_true_eq_left in E.
         apply lfeqb_elim in E.
         rewrite E in *.
         rewrite count_cons.
         rewrite IHl.
         reflexivity.
      }
      {
         simpl.
         rewrite E.
         assumption.
      }
   }
   }
   {
   simpl.
   rewrite lfeqb_refl.
   reflexivity.
   }
Qed.

Theorem count_cons_diff: forall (x y: natural) (l: lst), x <> y -> count (Cons y l) x= count l x.
Proof.
   intros. simpl.
   apply lfeqb_diff in H.
   rewrite H.
   reflexivity.
Qed.

Theorem count_insort_diff: forall (x y: natural) (l: lst), x <> y -> count (insort l y) x= count l x.
Proof.
   intros.
   induction l.
   {
   simpl.
   destruct (less y n) eqn:El; destruct (lfeqb x n) eqn:Ee.
   {
      simpl.
      apply lfeqb_diff in H. rewrite H.
      rewrite Ee.
      reflexivity.
   }
   {
      rewrite count_cons_diff.
      { simpl. rewrite Ee. reflexivity. }
      { assumption. }
   }
   {
      simpl. rewrite Ee. f_equal.
      assumption.
   }
   {
      simpl. rewrite Ee. assumption.
   }
   }
   {
   simpl.
 lfind_coqsynth. 
Admitted.
