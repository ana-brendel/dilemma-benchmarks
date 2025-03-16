Set Warnings "-notation-overridden,-parsing,-deprecated-hint-without-locality".
From Coq Require Export Lists.List.
From Coq Require Export Bool.Bool.
From Coq Require Export Arith.Arith.
From Coq Require Export Arith.EqNat.
From Coq Require Export Permutation.
Export ListNotations.
From Coq Require Import micromega.Lia.

Inductive sorted: list nat -> Prop :=
 | sorted_nil: sorted []
 | sorted_1: forall i, sorted [i]
 | sorted_cons: forall i j l, i <= j -> sorted (j :: l) -> sorted (i :: j :: l).

Definition is_a_sorting_algorithm (f: list nat -> list nat) := forall al,
    Permutation al (f al) /\ sorted (f al).

Fixpoint select (x: nat) (l: list nat) : nat * list nat :=
  match l with
  | [] => (x, [])
  | h :: t =>
    if x <=? h
    then let (j, l') := select x t
         in (j, h :: l')
    else let (j, l') := select h t
         in (j, x :: l')
  end.

Fixpoint selsort (l : list nat) (n : nat) : list nat :=
  match l, n with
  | _, O => []  (* ran out of fuel *)
  | [], _ => []
  | x :: r, S n' => let (y, r') := select x r
                  in y :: selsort r' n'
end.

Definition selection_sort (l : list nat) : list nat := selsort l (length l).

Definition le_all x xs := Forall (fun y => x <= y) xs.
Infix "<=*" := le_all (at level 70, no associativity).

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

(* ################################################################# *)

(* Definition key := nat.

Inductive tree (V : Type) : Type := | E | T (l : tree V) (k : key) (v : V) (r : tree V).

Arguments E {V}.
Arguments T {V}. *)

Inductive value := Red | Green | Blue.

Inductive tree : Type := | E | T (l : tree) (k : nat) (v : value) (r : tree).

(* Definition empty_tree {V : Type} : tree V := E. *)

Definition empty_tree : tree := E.

(* Fixpoint bound {V : Type} (x : key) (t : tree V) :=
match t with
| E => false
| T l y v r => if x <? y then bound x l else if y <? x then bound x r else true
end. *)

Fixpoint bound (x : nat) (t : tree) :=
match t with
| E => false
| T l y v r => if x <? y then bound x l else if y <? x then bound x r else true
end. 

(* Fixpoint lookup {V : Type} (d : V) (x : key) (t : tree V) : V :=
match t with
| E => d
| T l y v r => if x <? y then lookup d x l else if y <? x then lookup d x r else v
end. *)

Fixpoint lookup (d : value) (x : nat) (t : tree) : value :=
match t with
| E => d
| T l y v r => if x <? y then lookup d x l else if y <? x then lookup d x r else v
end.

(* Fixpoint insert {V : Type} (x : key) (v : V) (t : tree V) : tree V :=
match t with
| E => T E x v E
| T l y v' r => if x <? y then T (insert x v l) y v' r else if y <? x then T l y v' (insert x v r) else T l x v r
end. *)

Fixpoint insert (x : nat) (v : value) (t : tree) : tree :=
match t with
| E => T E x v E
| T l y v' r => if x <? y then T (insert x v l) y v' r else if y <? x then T l y v' (insert x v r) else T l x v r
end.

(* Fixpoint ForallT {V : Type} (P: key -> V -> Prop) (t: tree V) : Prop :=
match t with
| E => True
| T l k v r => P k v /\ ForallT P l /\ ForallT P r
end. *)

Fixpoint ForallT (P: nat -> value -> Prop) (t: tree) : Prop :=
match t with
| E => True
| T l k v r => P k v /\ ForallT P l /\ ForallT P r
end.

(* Inductive BST {V : Type} : tree V -> Prop :=
| BST_E : BST E
| BST_T : forall l x v r,
    ForallT (fun y _ => y < x) l ->
    ForallT (fun y _ => y > x) r ->
    BST l ->
    BST r ->
    BST (T l x v r). *)

  Inductive BST : tree -> Prop :=
  | BST_E : BST E
  | BST_T : forall l x v r,
      ForallT (fun y _ => y < x) l ->
      ForallT (fun y _ => y > x) r ->
      BST l -> BST r -> BST (T l x v r).

(** * Converting a BST to a List *)

(* Fixpoint elements {V : Type} (t : tree V) : list (key * V) :=
match t with
| E => []
| T l k v r => elements l ++ [(k, v)] ++ elements r
end. *)

Fixpoint elements (t : tree) : list (nat * value) :=
match t with
| E => []
| T l k v r => elements l ++ [(k, v)] ++ elements r
end.

(* Definition elements_complete_spec :=
forall (V : Type) (k : key) (v d : V) (t : tree V),
    BST t -> bound k t = true -> lookup d k t = v -> In (k, v) (elements t). *)

(* Definition elements_correct_spec := forall (V : Type) (k : key) (v d : V) (t : tree V),
    BST t -> In (k, v) (elements t) -> bound k t = true /\ lookup d k t = v. *)

Definition uncurry {X Y Z : Type} (f : X -> Y -> Z) '(a, b) := f a b.

Definition list_keys {V : Type} (lst : list (nat * V)) := map fst lst.

Definition disjoint {X:Type} (l1 l2: list X) := forall (x : X),  In x l1 -> ~ In x l2.

(* Fixpoint fast_elements_tr {V : Type} (t : tree V) (acc : list (key * V)) : list (key * V) :=
match t with
| E => acc
| T l k v r => fast_elements_tr l ((k, v) :: fast_elements_tr r acc)
end.

Definition fast_elements {V : Type} (t : tree V) : list (key * V) := fast_elements_tr t [].

Fixpoint kvs_insert {V : Type} (k : key) (v : V) (kvs : list (key * V)) :=
match kvs with
| [] => [(k, v)]
| (k', v') :: kvs' => if Nat.ltb k k' then (k, v) :: kvs
    else if Nat.ltb k' k then (k', v') :: kvs_insert k v kvs' else (k, v) :: kvs'
end. *)

Fixpoint fast_elements_tr (t : tree) (acc : list (nat * value)) : list (nat * value) :=
match t with
| E => acc
| T l k v r => fast_elements_tr l ((k, v) :: fast_elements_tr r acc)
end.

Definition fast_elements (t : tree) : list (nat * value) := fast_elements_tr t [].

Fixpoint kvs_insert (k : nat) (v : value) (kvs : list (nat * value)) :=
match kvs with
| [] => [(k, v)]
| (k', v') :: kvs' => if Nat.ltb k k' then (k, v) :: kvs
    else if Nat.ltb k' k then (k', v') :: kvs_insert k v kvs' else (k, v) :: kvs'
end.

Ltac bdestruct_guard :=
match goal with
| |- context [ if Nat.eqb ?X ?Y then _ else _ ] => bdestruct (Nat.eqb X Y)
| |- context [ if ?X <=? ?Y then _ else _ ] => bdestruct (X <=? Y)
| |- context [ if Nat.ltb ?X ?Y then _ else _ ] => bdestruct (Nat.ltb X Y)
end.

Ltac bdall := repeat (simpl; bdestruct_guard; try lia; auto).