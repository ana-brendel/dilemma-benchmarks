Require Import Arith.

Inductive natural : Type := Succ : natural -> natural |  Zero : natural.

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

Fixpoint mem (mem_arg0 : natural) (mem_arg1 : lst) : bool
           := match mem_arg0, mem_arg1 with
              | x, Nil => false
              | x, Cons y z => orb (eqb x y) (mem x z)
              end.

Definition lst_mem := mem.


Fixpoint lst_union (lst_union_arg0 : lst) (lst_union_arg1 : lst) : lst
           := match lst_union_arg0, lst_union_arg1 with
              | Nil, x => x
              | Cons n x, y => if lst_mem n y then lst_union x y else Cons n (lst_union x y)
              end.

(* requires no helper lemma *)
Theorem theorem0 : forall (x : natural) (y : lst) (z : lst), eq (lst_mem x y) true -> eq (lst_mem x (lst_union z y)) true.
Proof.
intros.
induction z.
- simpl. destruct (lst_mem n y).
+ assumption.
+ simpl. rewrite IHz. apply Bool.orb_true_r.
- assumption.
Qed.
              

