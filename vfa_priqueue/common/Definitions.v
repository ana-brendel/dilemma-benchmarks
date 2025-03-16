Set Warnings "-notation-overridden,-parsing,-deprecated-hint-without-locality".
From Coq Require Export Bool.
From Coq Require Export Arith.Arith.
From Coq Require Export PeanoNat.
From Coq Require Export Arith.EqNat.
From Coq Require Export Lia.
From Coq Require Export List.
Export ListNotations.
From Coq Require Export Permutation.

Definition geb (n m : nat) := m <=? n.
Hint Unfold geb : core.
Infix ">=?" := geb (at level 70) : nat_scope.

Definition gtb (n m : nat) := m <? n.
Hint Unfold gtb : core.
Infix ">?" := gtb (at level 70) : nat_scope.

Definition maybe_swap (al: list nat) : list nat :=
  match al with
  | a :: b :: ar => if a >? b then b :: a :: ar else a :: b :: ar
  | _ => al
  end.

Lemma eqb_reflect : forall x y, reflect (x = y) (x =? y).
Proof.
  intros x y. apply iff_reflect. symmetry.
  apply Nat.eqb_eq.
Qed.

Lemma ltb_reflect : forall x y, reflect (x < y) (x <? y).
Proof.
  intros x y. apply iff_reflect. symmetry.
  apply Nat.ltb_lt.
Qed.

Lemma leb_reflect : forall x y, reflect (x <= y) (x <=? y).
Proof.
  intros x y. apply iff_reflect. symmetry.
  apply Nat.leb_le.
Qed.

Lemma gtb_reflect : forall x y, reflect (x > y) (x >? y).
Proof.
  intros x y. apply iff_reflect. symmetry.
  apply Nat.ltb_lt.
Qed.

Lemma geb_reflect : forall x y, reflect (x >= y) (x >=? y).
Proof.
  intros x y. apply iff_reflect. symmetry.
  apply Nat.leb_le.
Qed.

Hint Resolve ltb_reflect leb_reflect gtb_reflect geb_reflect eqb_reflect : bdestruct.

Ltac bdestruct X :=
  let H := fresh in let e := fresh "e" in
   evar (e: Prop);
   assert (H: reflect e X); subst e;
    [ auto with bdestruct
    | destruct H as [H|H];
       [ | try first [apply not_lt in H | apply not_le in H]]].

Ltac inv H := inversion H; clear H; subst.

Fixpoint select (i: nat) (l: list nat) : nat * list nat :=
match l with
|  nil => (i, nil)
|  h::t => if i >=? h
               then let (j, l') := select i t in (j, h::l')
               else let (j,l') := select h t in (j, i::l')
end.

(* Definition key := nat. *)

(* Definition priqueue := list key. *)

Definition insert (k: nat) (p: list nat) := k::p.

Definition delete_max (p: list nat) :=
  match p with
  | i::p' => Some (select i p')
  | nil => None
  end.
  
Definition merge (p q: list nat) : list nat := p++q.

Definition priq (p: list nat) := True.

Definition Abs (p : list nat) (kl : list nat) := Permutation p kl.