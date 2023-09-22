Require Import Arith.
From QuickChick Require Import QuickChick.
Inductive natural : Type := Succ : natural -> natural |  Zero : natural.
Derive Show for natural. Derive Arbitrary for natural.  Instance Dec_Eq_natural : Dec_Eq natural. Proof. dec_eq. Qed.
Inductive lst : Type := Cons : natural -> lst -> lst |  Nil : lst.

Inductive tree : Type := Node : natural -> tree -> tree -> tree |  Leaf : tree.

Inductive Pair : Type := mkpair : natural -> natural -> Pair
with Zlst : Type := zcons : Pair -> Zlst -> Zlst |  znil : Zlst.

Fixpoint append (append_arg0 : lst) (append_arg1 : lst) : lst
           := match append_arg0, append_arg1 with
              | Nil, x => x
              | Cons x y, z => Cons x (append y z)
              end.

Fixpoint eqb (n m: natural) : bool :=
  match n, m with
    | Zero, Zero => true
    | Zero, Succ _ => false
    | Succ _, Zero => false
    | Succ n', Succ m' => eqb n' m'
  end.
Fixpoint mem  (mem_arg1 : lst) (mem_arg0 : natural)
:= match mem_arg0, mem_arg1 with
  | x, Nil => false
  | x, Cons y z => orb (eqb x y) (mem z x)
  end.

Definition lst_mem (lst_mem_arg0 : natural) (lst_mem_arg1 : lst) : bool
           := match lst_mem_arg0, lst_mem_arg1 with
              | n, x => mem x n
              end.

Fixpoint lst_subset (lst_subset_arg0 : lst) (lst_subset_arg1 : lst) : bool
           := match lst_subset_arg0, lst_subset_arg1 with
              | Nil, x => true
              | Cons n x, y => andb (lst_subset x y) (lst_mem n y )
              end.

Definition lst_eq (lst_eq_arg0 : lst) (lst_eq_arg1 : lst) : bool
           := match lst_eq_arg0, lst_eq_arg1 with
              | x, y => andb (lst_subset x y) (lst_subset y x)
              end.

Fixpoint lst_union (lst_union_arg0 : lst) (lst_union_arg1 : lst) : lst
           := match lst_union_arg0, lst_union_arg1 with
              | Nil, x => x
              | Cons n x, y => if lst_mem n y then lst_union x y else Cons n (lst_union x y)
              end.

Lemma Nat_beq_refl : forall (n : natural), eqb n n = true.
Proof.
  intros.
  induction n.
  - assumption.
  - reflexivity.
  
Qed.

Lemma append_single : forall (x : lst) (n : natural), Cons n x = append (Cons n Nil) x.
Proof.
  reflexivity.
Qed.

Lemma append_cons : forall (x y : lst) (n : natural), append x (Cons n y) = append (append x (Cons n Nil)) y.
Proof.
  intros.
  induction x.
  - simpl. rewrite IHx. reflexivity.
  - reflexivity.
  
Qed.

Lemma subset_append : forall (x y : lst), lst_subset x (append y x) = true.
Proof.
  intro.
  induction x.
  - intros. simpl. apply Bool.andb_true_iff. split.
   + 
   rewrite append_cons. apply IHx.
   + induction y.
     * simpl. rewrite IHy.  apply Bool.orb_true_r.
     * simpl. rewrite Nat_beq_refl. reflexivity.
  - intros.
    induction y.
    * simpl. reflexivity.
    * simpl. reflexivity.
Qed.

Lemma subset_refl : forall (x : lst), lst_subset x x = true.
Proof.
  intros.
  induction x.
  - simpl. apply Bool.andb_true_iff. split.
   + 
   rewrite append_single. apply subset_append.
   + rewrite Nat_beq_refl. reflexivity.
  - reflexivity.
Qed.

Theorem theorem0 : forall (x : lst) (y : lst), lst_subset x y = true -> lst_eq (lst_union x y) y = true.
Proof.
  intros.
  induction x.
  - simpl. simpl in H.  apply Bool.andb_true_iff in H.
  destruct H. rewrite H0. apply IHx. assumption.
  - simpl. unfold lst_eq. apply Bool.andb_true_iff.
  split.
    + 
    apply subset_refl.
    + 
    apply subset_refl.
Qed.