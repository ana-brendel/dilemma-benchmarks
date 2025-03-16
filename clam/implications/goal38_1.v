From LFindToo Require Import LFindToo.
From QuickChick Require Import QuickChick.

Require Import Nat Arith.

Inductive Nat : Type := succ : Nat -> Nat |  zero : Nat.

Inductive Lst : Type := nil : Lst | cons : Nat -> Lst -> Lst.

(* ************************** [ QuickChick Stuff ] *************************** *)
Derive Show for Nat.
Derive Arbitrary for Nat.
Instance Dec_Eq_Nat : Dec_Eq (Nat).
Proof. dec_eq. Qed.

Derive Show for Lst.
Derive Arbitrary for Lst.
Instance Dec_Eq_lst : Dec_Eq (Lst).
Proof. dec_eq. Qed.

Fixpoint append (append_arg0 : Lst) (append_arg1 : Lst) : Lst
           := match append_arg0, append_arg1 with
              | nil, x => x
              | cons x y, z => cons x (append y z)
              end.

Fixpoint mem (mem_arg0 : Nat) (mem_arg1 : Lst) : Prop
:= match mem_arg0, mem_arg1 with
    | _, nil => False
    | x, cons y z => x = y \/ mem x z
    end.

Instance mem_dec (x : Nat) (ls : Lst) : (Dec (mem x ls)).
Proof. 
  dec_eq. induction ls.
  - simpl. auto.
  - destruct (dec_eq x n). 
  -- left. simpl. auto.
  -- simpl. destruct IHls. left. auto. right. unfold not. intros.
  destruct H. contradiction. contradiction.
Qed.

Theorem goal36 : forall (x : Nat) (y : Lst) (z : Lst), mem x y -> mem x (append y z).
Proof.
  intros.
  induction y.
  - contradiction.
  - simpl. destruct H.
    + auto.
    + apply IHy in H. auto.
Qed.

Theorem goal37 : forall (x : Nat) (y : Lst) (z : Lst), mem x z -> mem x (append y z).
Proof.
  intros.
  induction y.
  - auto.
  - simpl. auto.
Qed.

Theorem goal38_1 : forall (x : Nat) (y : Lst) (z : Lst), mem x y \/ mem x z -> mem x (append y z).
Proof.
  intros.
  destruct H.
  - findlemma. Admitted.
  
  (* apply goal36. assumption.
  - apply goal37. assumption.
Qed. *)
