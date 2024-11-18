Require Import Nat Arith.

Inductive Nat : Type := succ : Nat -> Nat |  zero : Nat.

Inductive Lst : Type := cons : Nat -> Lst -> Lst |  nil : Lst.

Inductive Tree : Type := node : Nat -> Tree -> Tree -> Tree |  leaf : Tree.

Inductive Pair : Type := mkpair : Nat -> Nat -> Pair
with ZLst : Type := zcons : Pair -> ZLst -> ZLst |  znil : ZLst.

Fixpoint less (less_arg0 : Nat) (less_arg1 : Nat) : bool
           := match less_arg0, less_arg1 with
              | x, zero => false
              | zero, succ x => true
              | succ x, succ y => less x y
              end.

Fixpoint eqn (m n : Nat) : bool :=
  match m , n with
  | zero , zero => true
  | succ m' , succ n' => eqn m' n'
  | _, _ => false
  end.

Definition leq (m n : Nat) : bool :=
  orb (eqn m n) (less m n).

Fixpoint insort (insort_arg0 : Nat) (insort_arg1 : Lst) : Lst
           := match insort_arg0, insort_arg1 with
              | i, nil => cons i nil
              | i, cons x y => if less i x then cons i (cons x y) else cons x (insort i y)
              end.

Fixpoint sorted (sorted_arg0 : Lst) : bool
           := match sorted_arg0 with
              | nil => true
              | cons x l =>
                let s := sorted l in
                match l with
                | nil => true
                | cons y _ => andb s (leq x y)
                end
              end.

Fixpoint sort (sort_arg0 : Lst) : Lst
           := match sort_arg0 with
              | nil => nil
              | cons x y => insort x (sort y)
              end.


(*
Lemma lem2: forall m n, less m n = false -> leq n m = true.
(* Proof. 
  induction m.
  - intros. unfold leq. unfold orb. remember (eqn n (succ m)).
    destruct b.
    * reflexivity.
    * destruct n.
      + simpl. simpl in H.  *)
Admitted.

Lemma lem3: forall n0 n l, sorted (cons n l) = true -> leq n0 n = true -> 
    sorted (cons n0 (cons n l)) = true.
Admitted.
*)

Lemma lem: forall n l, sorted l = true -> sorted (insort n l) = true.
(* Proof.
 intros. induction l.
  - simpl. remember (less n n0) as lt. destruct lt.
    * remember (cons n0 l) as l0. simpl. rewrite Heql0 in H. rewrite Heql0.
      rewrite H. simpl. unfold leq. rewrite <- Heqlt. destruct (eqn n n0).
      + auto.
      + auto.
    * assert (sorted l = true). 
      + destruct l.
        ** simpl in H. unfold andb in H. remember (match l with | cons y _ => if sorted l then leq n1 y else false
      | nil => true end). destruct b.
          *** simpl. unfold andb. rewrite <- Heqb. reflexivity.
          *** inversion H.
        ** reflexivity.
      + remember (insort n l) as li. destruct li.
        ** apply lem3. apply IHl. assumption.
        assert ((sorted (cons n1 li)) = true).
        ** apply IHl. apply H0.
        ** assert (leq n0 n1 = true).
           *** inversion H1. remember (leq n0 n1). destruct b.
              ++ rewrite H3. reflexivity.
              ++ destruct li.
                +++ rewrite H3. 
        remember (sorted (cons n1 li)) as r1.
        remember (leq n0 n1) as r2.
        destruct andb.
        ** reflexivity.
        ** 
        ** simpl. simpl in IHl. unfold andb. 
           remember (match li with
  | cons y _ => if sorted li then leq n1 y else false
  | nil => true
  end). destruct b.
          *** *)
Admitted.
        

Theorem theorem0 : forall (x : Lst), eq (sorted (sort x)) true.
Proof.
induction x.
  - simpl. apply lem. apply IHx.
  - reflexivity.
Qed.
