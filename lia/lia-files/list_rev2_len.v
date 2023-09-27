Require Import Nat.

Inductive lst : Type :=
  | Nil : lst
  | Cons : nat -> lst -> lst.

Fixpoint len (l : lst) : nat :=
match l with
  | Nil => 0
  | Cons a l1 => 1 + (len l1)
end.

Fixpoint rev (l1 l2: lst): lst :=
  match l1 with
  | Nil => l2
  | Cons x l1' => rev l1' (Cons x l2)
  end. 

Lemma list_rev2_len_lem: forall l1 l2, 
len (rev l1 l2) = (len l1) + (len l2).
Proof.
  induction l1.
  - simpl. reflexivity.
  - simpl. intros. rewrite IHl1. simpl. rewrite <- plus_n_Sm.
    reflexivity.
Qed.


Theorem list_rev2_len: forall l: lst, len (rev l Nil) = len l.
Proof.
  induction l.
  - simpl. reflexivity.
  - rewrite list_rev2_len_lem. simpl. rewrite <- plus_n_O. reflexivity.
Qed.
