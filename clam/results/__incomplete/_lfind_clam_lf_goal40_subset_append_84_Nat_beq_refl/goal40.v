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

Fixpoint lfappend (lfappend_arg0 : lst) (lfappend_arg1 : lst) : lst
           := match lfappend_arg0, lfappend_arg1 with
              | Nil, x => x
              | Cons x y, z => Cons x (lfappend y z)
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

Lemma lfappend_single : forall (x : lst) (n : natural), Cons n x = lfappend (Cons n Nil) x.
Proof.
  reflexivity.
Qed.

Lemma lfappend_cons : forall (x y : lst) (n : natural), lfappend x (Cons n y) = lfappend (lfappend x (Cons n Nil)) y.
Proof.
  intros.
  induction x.
  - simpl. rewrite IHx. reflexivity.
  - reflexivity.
  
Qed.

Lemma subset_lfappend : forall (x y : lst), lst_subset x (lfappend y x) = true.
Proof.
  intro.
  induction x.
  - intros. simpl. apply Bool.andb_true_iff. split.
   + 
   rewrite lfappend_cons. apply IHx.
   + induction y.
     * simpl. rewrite IHy.  apply Bool.orb_true_r.
     * simpl.  
     lfind_coqsynth.  reflexivity. 
Admitted.