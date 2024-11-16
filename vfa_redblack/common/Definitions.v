Set Warnings "-notation-overridden,-parsing,-deprecated-hint-without-locality".
From Coq Require Export Lists.List.
From Coq Require Export Bool.Bool.
From Coq Require Export Arith.Arith.
From Coq Require Export Arith.EqNat.
From Coq Require Export Permutation.
From Coq Require Import micromega.Lia.
From Coq Require Import String. 
From Coq Require Import Logic.FunctionalExtensionality.
Export ListNotations.

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

Hint Resolve ltb_reflect leb_reflect eqb_reflect : bdestruct.

Ltac bdestruct X :=
  let H := fresh in let e := fresh "e" in
   evar (e: Prop);
   assert (H: reflect e X); subst e;
    [eauto with bdestruct
    | destruct H as [H|H];
       [ | try first [apply not_lt in H | apply not_le in H]]].

(* NEED EXTRACT DEFINITIONS *)

Parameter int : Type.
Require Import ZArith.
Open Scope Z_scope.

Parameter Abs : int -> Z.
Axiom Abs_inj: forall (n m : int), Abs n = Abs m -> n = m.

Parameter ltb: int -> int -> bool.
Axiom ltb_lt : forall (n m : int), ltb n m = true <-> Abs n < Abs m.

Parameter leb: int -> int -> bool.
Axiom leb_le : forall (n m : int), leb n m = true <-> Abs n <= Abs m.

Lemma int_ltb_reflect : forall x y, reflect (Abs x < Abs y) (ltb x y).
Proof. intros x y. apply iff_reflect. symmetry. apply ltb_lt. Qed.

Lemma int_leb_reflect : forall x y, reflect (Abs x <= Abs y) (leb x y).
Proof. intros x y. apply iff_reflect. symmetry. apply leb_le. Qed.

Lemma Z_eqb_reflect : forall x y, reflect (x = y) (Z.eqb x y).
Proof. intros x y. apply iff_reflect. symmetry. apply Z.eqb_eq. Qed.

Lemma Z_ltb_reflect : forall x y, reflect (x < y) (Z.ltb x y).
Proof. intros x y. apply iff_reflect. symmetry. apply Z.ltb_lt. Qed.

Lemma Z_leb_reflect : forall x y, reflect (x <= y) (Z.leb x y).
Proof. intros x y. apply iff_reflect. symmetry. apply Z.leb_le. Qed.

Lemma Z_gtb_reflect : forall x y, reflect (x > y) (Z.gtb x y).
Proof. intros x y. apply iff_reflect. symmetry. rewrite Z.gtb_ltb. rewrite Z.gt_lt_iff. apply Z.ltb_lt. Qed.

Lemma Z_geb_reflect : forall x y, reflect (x >= y) (Z.geb x y).
Proof. intros x y. apply iff_reflect. symmetry. rewrite Z.geb_leb. rewrite Z.ge_le_iff. apply Z.leb_le. Qed.

Hint Resolve
     int_ltb_reflect int_leb_reflect
     Z_eqb_reflect Z_ltb_reflect Z_leb_reflect Z_gtb_reflect Z_geb_reflect
  : bdestruct.
Ltac bdestruct_guard:=
  match goal with
  | |- context [ if Nat.eqb ?X ?Y then _ else _] => bdestruct (Nat.eqb X Y)
  | |- context [ if Nat.ltb ?X ?Y then _ else _] => bdestruct (Nat.ltb X Y)
  | |- context [ if Nat.leb ?X ?Y then _ else _] => bdestruct (Nat.leb X Y)
  | |- context [ if Z.eqb ?X ?Y then _ else _] => bdestruct (Z.eqb X Y)
  | |- context [ if Z.ltb ?X ?Y then _ else _] => bdestruct (Z.ltb X Y)
  | |- context [ if Z.leb ?X ?Y then _ else _] => bdestruct (Z.leb X Y)
  | |- context [ if Z.gtb ?X ?Y then _ else _] => bdestruct (Z.gtb X Y)
  | |- context [ if Z.geb ?X ?Y then _ else _] => bdestruct (Z.geb X Y)
  | |- context [ if ltb ?X ?Y then _ else _] => bdestruct (ltb X Y)
  | |- context [ if leb ?X ?Y then _ else _] => bdestruct (leb X Y)
  end.
Ltac bdall :=
  repeat (simpl; bdestruct_guard; try lia; auto).

(* REDBLACK DEFINITIONS *)
(* Variable V : Type.
Variable default : V. *)

Definition key := int.

Inductive color := Red | Black.

Inductive tree {V} : Type :=
| E : tree
| T : color -> tree -> key -> V -> tree -> tree.

Definition empty_tree {V} : (@tree V) := E.

Fixpoint lookup {V} (default : V) (x: key) (t : tree) : V :=
    match t with
    | E => default
    | T _ tl k v tr => if ltb x k then lookup default x tl
                    else if ltb k x then lookup default x tr
                            else v
    end.

Definition balance {V} (rb : color) (t1 : tree) (k : key) (vk : V) (t2 : tree) : tree :=
    match rb with
    | Red => T Red t1 k vk t2
    | _ => match t1 with
        | T Red (T Red a x vx b) y vy c =>
            T Red (T Black a x vx b) y vy (T Black c k vk t2)
        | T Red a x vx (T Red b y vy c) =>
            T Red (T Black a x vx b) y vy (T Black c k vk t2)
        | _ => match t2 with
                | T Red (T Red b y vy c) z vz d =>
            T Red (T Black t1 k vk b) y vy (T Black c z vz d)
                | T Red b y vy (T Red c z vz d)  =>
            T Red (T Black t1 k vk b) y vy (T Black c z vz d)
                | _ => T Black t1 k vk t2
                end
        end
    end.

Fixpoint ins {V} (x : key) (vx : V) (t : tree) : tree :=
    match t with
    | E => T Red E x vx E
    | T c a y vy b => if ltb x y then balance c (ins x vx a) y vy b
                    else if ltb y x then balance c a y vy (ins x vx b)
                            else T c a x vx b
    end.

Definition make_black {V} (t : @tree V) : tree :=
    match t with
    | E => E
    | T _ a x vx b => T Black a x vx b
    end.

Definition insert {V} (x : key) (vx : V) (t : tree) := make_black (ins x vx t).

Fixpoint elements_tr {V} (t : tree) (acc: list (key * V)) : list (key * V) :=
    match t with
    | E => acc
    | T _ l k v r => elements_tr l ((k, v) :: elements_tr r acc)
    end.

Definition elements {V} (t : tree) : list (key * V) :=
    elements_tr t [].

Fixpoint ForallT {V} (P: int -> V -> Prop) (t: tree) : Prop :=
    match t with
    | E => True
    | T c l k v r => P k v /\ ForallT P l /\ ForallT P r
    end.

Inductive BST {V} : tree -> Prop :=
| ST_E : BST E
| ST_T : forall (c : color) (l : tree) (k : key) (v : V) (r : tree),
    ForallT (fun k' _ => (Abs k') < (Abs k)) l ->
    ForallT (fun k' _ => (Abs k') > (Abs k)) r ->
    BST l ->
    BST r ->
    BST (T c l k v r).

(* ---- NEW PROPOSITION ---- *)
Inductive RB {V} : tree -> color -> nat -> Prop :=
| RB_leaf: forall (c : color), RB E c 0
| RB_r: forall (l r : tree) (k : key) (v : V) (n : nat),
    RB l Red n ->
    RB r Red n ->
    RB (T Red l k v r) Black n
| RB_b: forall (c : color) (l r : tree) (k : key) (v : V) (n : nat),
    RB l Black n ->
    RB r Black n ->
    RB (T Black l k v r) c (S n).

(* ---- NEW PROPOSITION ---- *)
Inductive NearlyRB {V} : tree -> nat -> Prop :=
| NearlyRB_r : forall (l r : tree) (k : key) (v : V) (n : nat),
    RB l Black n ->
    RB r Black n ->
    NearlyRB (T Red l k v r) n
| NearlyRB_b : forall (l r : tree) (k : key) (v : V) (n : nat),
    RB l Black n ->
    RB r Black n ->
    NearlyRB (T Black l k v r) (S n).
    
Fixpoint height {V} (t : @tree V) : nat
:= match t with
    | E => 0
    | T _ l _ _ r => S (max (height l) (height r))
    end.

Fixpoint mindepth {V} (t : @tree V) : nat
:= match t with
    | E => 0
    | T _ l _ _ r => S (min (mindepth l) (mindepth r))
    end.