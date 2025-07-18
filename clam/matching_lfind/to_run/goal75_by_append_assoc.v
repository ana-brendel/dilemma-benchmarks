From Dilemma Require Import Dilemma.
From QuickChick Require Import QuickChick.

Inductive natural : Type := Succ : natural -> natural |  Zero : natural.

Derive Show for natural. 
Derive Arbitrary for natural.  
Instance Dec_Eq_natural : Dec_Eq natural. 
Proof. dec_eq. Qed.

Inductive lst : Type := Cons : natural -> lst -> lst |  Nil : lst.

Derive Show for lst. 
Derive Arbitrary for lst.  
Instance Dec_Eq_lst : Dec_Eq lst. 
Proof. dec_eq. Qed.

Fixpoint append (append_arg0 : lst) (append_arg1 : lst) : lst
           := match append_arg0, append_arg1 with
              | Nil, x => x
              | Cons x y, z => Cons x (append y z)
              end.

Fixpoint rev (rev_arg0 : lst) : lst
           := match rev_arg0 with
              | Nil => Nil
              | Cons x y => append (rev y) (Cons x Nil)
              end.

Fixpoint qreva (qreva_arg0 : lst) (qreva_arg1 : lst) : lst
           := match qreva_arg0, qreva_arg1 with
              | Nil, x => x
              | Cons z x, y => qreva x (Cons z y)
              end.

Lemma append_assoc : forall (x y z : lst), append (append x y) z = append x (append y z).
Proof. Admitted.

Theorem theorem0 : forall (x : lst) (y : lst), eq (append (rev x) y) (qreva x y).
Proof.
   induction x.
   - intros. simpl. 
   dilemma. Admitted.

   (* rewrite append_assoc. simpl. rewrite IHx. reflexivity.
   - reflexivity.
Qed. *)
              

