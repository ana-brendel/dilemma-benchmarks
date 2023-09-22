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

Fixpoint len (len_arg0 : lst) : natural
:= match len_arg0 with
   | Nil => Zero
   | Cons x y => Succ (len y)
   end.

Theorem insort_len: forall (n: natural) (x : lst), len (insort x n) = Succ (len x).
   intro.
   induction x.
   { simpl. destruct (less n n0).
      {
      simpl. reflexivity.
      }
      {
      simpl. rewrite IHx.
      reflexivity.
      }
   }
   {
      simpl. reflexivity.
   }
Qed.

Theorem theorem0 : forall (x : lst), eq (len (sort x)) (len x).
Proof.
   induction x; simpl; try reflexivity.
   rewrite insort_len.
   f_equal; assumption.
Qed.

