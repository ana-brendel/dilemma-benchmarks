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

    Definition lst_mem (lst_mem_arg0 : natural) (lst_mem_arg1 : lst) : bool
    := match lst_mem_arg0, lst_mem_arg1 with
       | n, x => mem x n
       end.


  Fixpoint lst_union (lst_union_arg0 : lst) (lst_union_arg1 : lst) : lst
  := match lst_union_arg0, lst_union_arg1 with
     | Nil, x => x
     | Cons n x, y => if lst_mem n y then lst_union x y else Cons n (lst_union x y)
     end.

Lemma Nat_beq_eq : forall (x y : natural), eqb x y = true -> x = y.
Proof.
   intros.
   generalize dependent y.
   induction x.
   - intros. destruct y.
   + simpl in H. apply IHx in H. rewrite H. reflexivity.
   + discriminate.
   - intros. destruct y.
   + discriminate.
   + reflexivity.
Qed.

Lemma mem_union : forall (x : natural) (y z : lst), lst_mem x y = true -> lst_mem x (lst_union z y) = true.
Proof.
   intros.
   induction z.
   - simpl. destruct (lst_mem n y).
   + assumption.
   + simpl. rewrite IHz. apply Bool.orb_true_r.
   - assumption.
Qed.

Theorem theorem0 : forall (x : natural) (y : lst) (z : lst), eq (lst_mem x y) true -> eq (lst_mem x (lst_union y z)) true.
Proof.
   intros.
   induction y.
   - simpl in H. apply Bool.orb_prop in H. destruct H.
   + simpl. destruct (lst_mem n z) eqn:?.
      * 
      rewrite mem_union.
         -- reflexivity.
         -- rewrite (Nat_beq_eq x n H). assumption.
      * simpl. rewrite H. reflexivity.
   + apply IHy in H. simpl. destruct (lst_mem n z).
      * assumption.
      * simpl. rewrite H. apply Bool.orb_true_r.
   - discriminate.
Qed.

