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

Fixpoint len (len_arg0 : Lst) : Nat
           := match len_arg0 with
              | nil => zero
              | cons x y => succ (len y)
              end.

Fixpoint rotate (rotate_arg0 : Nat) (rotate_arg1 : Lst) : Lst
           := match rotate_arg0, rotate_arg1 with
              | zero, x => x
              | succ n, nil => nil
              | succ n, cons y x => rotate n (append x (cons y nil))
              end.

(* Earlier one *)
Lemma rotate_len_append : forall (x y : Lst), rotate (len x) (append x y) = append y x.
Proof. Admitted.

(* Theorem rotate_len *)
Theorem goal32_by_rotate_len_append : forall (x : Lst), eq (rotate (len x) x) x.
Proof.
  intros.
  induction x.
  - reflexivity.
  - simpl. 
  findlemma. Admitted.
  
  (* rewrite rotate_len_append. reflexivity.
Qed. *)
