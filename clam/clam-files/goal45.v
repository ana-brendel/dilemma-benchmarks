

Require Import Arith.
From QuickChick Require Import QuickChick.
Inductive natural : Type := Succ : natural -> natural |  Zero : natural.
Derive Show for natural. Derive Arbitrary for natural.  Instance Dec_Eq_natural : Dec_Eq natural. Proof. dec_eq. Qed.
Inductive lst : Type := Cons : natural -> lst -> lst |  Nil : lst.

Inductive tree : Type := Node : natural -> tree -> tree -> tree |  Leaf : tree.

Inductive Pair : Type := mkpair : natural -> natural -> Pair
with Zlst : Type := zcons : Pair -> Zlst -> Zlst |  znil : Zlst.

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

Fixpoint less (less_arg0 : natural) (less_arg1 : natural) : bool
           := match less_arg0, less_arg1 with
              | x, Zero => false
              | Zero, Succ x => true
              | Succ x, Succ y => less x y
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

Lemma Nat_beq_refl : forall (n : natural), eqb n n = true.
Proof.
   intros.
   induction n.
   - assumption.
   - reflexivity.
Qed.
              
Theorem theorem0 : forall (x : natural) (y : lst), eq (mem (insort  y x) x) true.
Proof.
   intros.
  induction y.
  - simpl. destruct (less x n).
    + simpl. rewrite Nat_beq_refl. reflexivity.
    + simpl. rewrite IHy. apply Bool.orb_true_r.
  - simpl. rewrite Nat_beq_refl. reflexivity.
Qed.

