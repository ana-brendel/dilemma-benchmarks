Require Import Nat.

Inductive lst : Type :=
  | Nil : lst
  | Cons : nat -> lst -> lst.

Inductive queue : Type :=
  | Queue : lst -> lst -> queue.

Fixpoint len (l : lst) : nat :=
match l with
  | Nil => 0
  | Cons a l1 => 1 + (len l1)
end.

Lemma len_pos: forall l, (len l) >= 0.
Proof.
  induction l.
  - simpl. apply le_0_n.
  - simpl. apply le_0_n.
Qed.

Definition qlen (q : queue) : nat :=
match q with
  | Queue l1 l2 => (len l1) + (len l2)
end. 

Fixpoint app (l : lst) (m: lst): lst :=
match l with
  | Nil => m
  | Cons a l1 => Cons a (app l1 m)
end.

Fixpoint rev (l: lst): lst :=
match l with
  | Nil => Nil
  | Cons a l1 => app (rev l1) (Cons a Nil)
end.

Fixpoint leb (n m : nat) : bool :=
match (n, m) with
  | (0, _) => true
  | (S n', S m') => leb n' m'
  | _ => false
end. 

Definition amortizeQueue (l1 l2 : lst) : queue :=
  if leb (len l2)  (len l1) then Queue l1 l2
  else Queue (app l1 (rev l2)) Nil.


Lemma len_app : forall l1 l2, len (app l1 l2) = (len l1) + (len l2).
Proof.
  intros. induction l1.
  - reflexivity.
  - simpl. rewrite IHl1. reflexivity.
Qed.

Lemma plus_comm: forall m n, m + n = n + m.
Proof.
induction m.
- intros. simpl. rewrite <- plus_n_O. reflexivity.
- intros. simpl. rewrite IHm. rewrite plus_n_Sm. reflexivity.
Qed.

Lemma len_rev : forall l, len (rev l) = len l.
Proof.
induction l.
- reflexivity.
- simpl. rewrite len_app. simpl. rewrite plus_comm. simpl. rewrite IHl. reflexivity.
Qed.

Theorem queue_len : forall l1 l2, qlen (amortizeQueue l1 l2) = (len l1) + (len l2).
Proof.
  intros. unfold amortizeQueue. destruct (leb (len l2) (len l1)).
  - simpl. reflexivity.
  - simpl. rewrite <- plus_n_O. 
    rewrite len_app.
    apply f_equal2_plus.
    * reflexivity.
    * rewrite len_rev. reflexivity.
Qed.
