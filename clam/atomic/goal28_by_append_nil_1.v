From LFindToo Require Import LFindToo.
From QuickChick Require Import QuickChick.

Require Import Nat Arith.

Inductive Nat : Type := succ : Nat -> Nat |  zero : Nat.

Inductive Lst : Type := nil : Lst | cons : Nat -> Lst -> Lst.

Inductive Tree : Type := leaf : Tree | node : Nat -> Tree -> Tree -> Tree.

(* ************************** [ QuickChick Stuff ] *************************** *)
Derive Show for Nat.
Derive Arbitrary for Nat.
Instance Dec_Eq_Nat : Dec_Eq (Nat).
Proof. dec_eq. Qed.

Derive Show for Lst.
Derive Arbitrary for Lst.
Instance Dec_Eq_lst : Dec_Eq (Lst).
Proof. dec_eq. Qed.

Derive Show for Tree.
Derive Arbitrary for Tree.
Instance Dec_Eq_Tree : Dec_Eq (Tree).
Proof. dec_eq. Qed.

Fixpoint append (append_arg0 : Lst) (append_arg1 : Lst) : Lst
           := match append_arg0, append_arg1 with
              | nil, x => x
              | cons x y, z => cons x (append y z)
              end.

Fixpoint rev (rev_arg0 : Lst) : Lst
           := match rev_arg0 with
              | nil => nil
              | cons x y => append (rev y) (cons x nil)
              end.

Fixpoint qreva (qreva_arg0 : Lst) (qreva_arg1 : Lst) : Lst
           := match qreva_arg0, qreva_arg1 with
              | nil, x => x
              | cons z x, y => qreva x (cons z y)
              end.

Fixpoint revflat (revflat_arg0 : Tree) : Lst
           := match revflat_arg0 with
              | leaf => nil
              | node d l r => append (revflat l) (cons d (revflat r))
              end.

Fixpoint qrevaflat (qrevaflat_arg0 : Tree) (qrevaflat_arg1 : Lst) : Lst
           := match qrevaflat_arg0, qrevaflat_arg1 with
              | leaf, x => x
              | node d l r, x => qrevaflat l (cons d (qrevaflat r x))
              end.

Theorem append_nil: forall (l: Lst), append l nil = l.
Proof. Admitted.

Theorem append_assoc: forall (l1 l2 l3: Lst), append l1 (append l2 l3) = append (append l1 l2) l3.
Proof. Admitted.

(* Theorem qrevflat_append  *)
Theorem goal28_by_append_nil_1: forall (x : Tree) (y: Lst), append (revflat x) y = qrevaflat x y.
Proof.
  induction x; induction y; simpl; try reflexivity.
  + findlemma. Admitted.
  (* rewrite append_nil. rewrite <- IHx1. f_equal. f_equal. rewrite <- IHx2. 
  rewrite append_nil. reflexivity.
  + rewrite <- IHx1. 
  rewrite <- append_assoc. f_equal. simpl. rewrite IHx2. reflexivity.
Qed. *)

