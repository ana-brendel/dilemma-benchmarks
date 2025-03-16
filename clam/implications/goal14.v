From LFindToo Require Import LFindToo.
From QuickChick Require Import QuickChick.

Require Import Nat Arith.

Inductive Nat : Type := succ : Nat -> Nat |  zero : Nat.

Inductive Lst : Type := cons : Nat -> Lst -> Lst |  nil : Lst.

(* ************************** [ QuickChick Stuff ] *************************** *)
Derive Show for Nat.
Derive Arbitrary for Nat.
Instance Dec_Eq_Nat : Dec_Eq (Nat).
Proof. dec_eq. Qed.

Derive Show for Lst.
Derive Arbitrary for Lst.
Instance Dec_Eq_lst : Dec_Eq (Lst).
Proof. dec_eq. Qed.

Fixpoint less (less_arg0 : Nat) (less_arg1 : Nat) : bool
           := match less_arg0, less_arg1 with
              | _, zero => false
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

Lemma lem0: forall n0 n l, sorted (cons n l) = true -> leq n0 n = true -> 
    sorted (cons n0 (cons n l)) = true.
Proof.
  intros. generalize dependent n. induction l. 
  - intros. simpl. rewrite H0. rewrite Bool.andb_true_r. assumption.
  - intros. simpl. assumption.
Qed.

Lemma lem: forall n l, sorted l = true -> sorted (insort n l) = true.
Proof. Admitted.

Theorem goal14 : forall (x : Lst), eq (sorted (sort x)) true.
Proof.
induction x.
  - simpl. 
  findlemma. Admitted.
  
  (* apply lem. apply IHx.
  - reflexivity.
Qed. *)
