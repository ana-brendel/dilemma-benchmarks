From Dilemma Require Import Dilemma.
From QuickChick Require Import QuickChick.

Inductive natural : Type := Succ : natural -> natural |  Zero : natural.

Derive Show for natural.
Derive Arbitrary for natural.
Instance Dec_Eq_natural : Dec_Eq (natural).
Proof. dec_eq. Qed.

Fixpoint plus (plus_arg0 : natural) (plus_arg1 : natural) : natural
           := match plus_arg0, plus_arg1 with
              | Zero, n => n
              | Succ n, m => Succ (plus n m)
              end.

Fixpoint even (even_arg0 : natural) : bool
           := match even_arg0 with
              | Zero => true
              | Succ n => negb (even n)
              end.

Lemma lem: forall m n, even (plus m n) = negb (even (plus m (Succ n))).
Proof.
induction m.
  - intros. simpl. rewrite <- IHm. reflexivity.
  - intros. simpl. unfold negb. destruct (even n). reflexivity. reflexivity.
Qed.

Lemma lem2: forall n, plus n Zero = n.
Proof.
induction n.
  - simpl. rewrite IHn. reflexivity.
  - reflexivity.
Qed.

Theorem theorem0 : forall (x : natural) (y : natural), eq (even (plus x y)) (even (plus y x)).
Proof.
induction x.
- intros. simpl. rewrite IHx. 
  dilemma. Admitted.

  (* rewrite lem. unfold negb.
  destruct (even (plus y (Succ x))). reflexivity. reflexivity.
- intros. simpl. rewrite lem2. reflexivity.
Qed. *)

