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

Definition first_le_second (al: list nat) : Prop :=
  match al with
  | a :: b :: _ => a <= b
  | _ => True
  end.

Ltac inv H := inversion H; clear H; subst.

Inductive positive : Set :=
  | xI : positive -> positive
  | xO : positive -> positive
  | xH : positive.

Notation "p ~ 1" := (xI p)
  (at level 7, left associativity, format "p '~' '1'").
 Notation "p ~ 0" := (xO p)
  (at level 7, left associativity, format "p '~' '0'").

Fixpoint positive2nat (p: positive) : nat :=
  match p with
  | xI q => 1 + 2 * positive2nat q
  | xO q => 0 + 2 * positive2nat q
  | xH => 1
 end.

Fixpoint succ x :=
match x with
  | p~1 => (succ p)~0
  | p~0 => p~1
  | xH => xH~0
end.

Fixpoint of_succ_nat (n:nat) : positive :=
  match n with
    | O => xH
    | S x => succ (of_succ_nat x)
  end.

Fixpoint nat2positive (n:nat) : positive :=
match n with
   | O => xH
   | S O => xH
   | S x => succ (nat2positive x)
end.
 
Fixpoint print_in_binary (p: positive) : list nat :=
  match p with
  | xI q => print_in_binary q ++ [1]
  | xO q =>print_in_binary q ++ [0]
  | xH => [1]
 end.

Fixpoint addc (carry: bool) (x y: positive) {struct x} : positive :=
  match carry, x, y with
    | false, p~1, q~1 => (addc true p q)~0
    | false, p~1, q~0 => (addc false p q)~1
    | false, p~1, xH => (succ p)~0
    | false, p~0, q~1 => (addc false p q)~1
    | false, p~0, q~0 => (addc false p q)~0
    | false, p~0, xH => p~1
    | false, xH, q~1 => (succ q)~0
    | false, xH, q~0 => q~1
    | false, xH, xH => xH~0
    | true, p~1, q~1 => (addc true p q)~1
    | true, p~1, q~0 => (addc true p q)~0
    | true, p~1, xH => (succ p)~1
    | true, p~0, q~1 => (addc true p q)~0
    | true, p~0, q~0 => (addc false p q)~1
    | true, p~0, xH => (succ p)~0
    | true, xH, q~1 => (succ q)~1
    | true, xH, q~0 => (succ q)~0
    | true, xH, xH => xH~1
  end.

Definition add (x y: positive) : positive := addc false x y.

Inductive comparison : Set := Eq : comparison | Lt : comparison | Gt : comparison.

Fixpoint compare x y {struct x}:=
  match x, y with
    | p~1, q~1 => compare p q
    | p~1, q~0 => match compare p q with Lt => Lt | _ => Gt end
    | p~1, xH => Gt
    | p~0, q~1 => match compare p q with Gt => Gt | _ => Lt end
    | p~0, q~0 => compare p q
    | p~0, xH => Gt
    | xH, q~1 => Lt
    | xH, q~0 => Lt
    | xH, xH => Eq
  end.

Inductive LFType : Type := One | Two | Three | Four | Five | Six.

Inductive trie :=
  | Leaf : trie
  | Node : trie -> LFType -> trie -> trie.

Definition trie_table : Type := (LFType * trie)%type.

Definition empty (default: LFType) : trie_table := (default, Leaf).

Fixpoint look (default: LFType) (i: positive) (m: trie): LFType :=
    match m with
    | Leaf => default
    | Node l x r =>
        match i with
        | xH => x
        | xO i' => look default i' l
        | xI i' => look default i' r
        end
    end.

Definition lookup (i: positive) (t: trie_table) : LFType := look (fst t) i (snd t).

Fixpoint ins default (i: positive) (a: LFType) (m: trie): trie :=
    match m with
    | Leaf =>
        match i with
        | xH => Node Leaf a Leaf
        | xO i' => Node (ins default i' a Leaf) default Leaf
        | xI i' => Node Leaf default (ins default i' a Leaf)
        end
    | Node l o r =>
        match i with
        | xH => Node l a r
        | xO i' => Node (ins default i' a l) o r
        | xI i' => Node l o (ins default i' a r)
        end
    end.

Definition insert (i: positive) (a: LFType) (t: trie_table) : trie_table := (fst t, ins (fst t) i a (snd t)).

(* Definition nat2pos (n: nat) : positive := Pos.of_succ_nat n.
Definition pos2nat (n: positive) : nat := pred (Pos.to_nat n). *)

(* Definition is_trie (t: trie_table) : Prop := True. *)

(* Definition abstract (t: trie_table) (n: nat) : LFType := lookup (nat2pos n) t. *)
