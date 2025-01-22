(** * Extract: Running Coq Programs in OCaml *)

Require Import vfa_extract_benchmarks.Definitions.
Require Import vfa_extract_benchmarks.Decide.

(* Require Extraction.
Set Extraction Output Directory ".". *)

(* ################################################################# *)
(** * Extraction *)

Fixpoint ins (i : nat) (l : list nat) :=
  match l with
  | [] => [i]
  | h :: t => if i <=? h then i :: h :: t else h :: ins i t
  end.

Fixpoint sort (l : list nat) : list nat :=
  match l with
  | [] => []
  | h :: t => ins h (sort t)
  end.

(* Extraction sort.

Recursive Extraction sort. *)

(* Extract Inductive bool => "bool" [ "true" "false" ].
Extract Inductive list => "list" [ "[]" "(::)" ].
Recursive Extraction sort. *)

Require Import ZArith.
Open Scope Z_scope.

Fixpoint insZ (i : Z) (l : list Z) :=
  match l with
  | [] => [i]
  | h :: t => if i <=? h then i :: h :: t else h :: insZ i t
  end.

Fixpoint sortZ (l : list Z) : list Z :=
  match l with
  | [] => []
  | h :: t => insZ h (sortZ t)
  end.

(* Recursive Extraction sortZ. *)

(* ################################################################# *)

Parameter int : Type.
(* Extract Inlined Constant int => "int". *)

Parameter Abs : int -> Z.
Axiom Abs_inj: forall (n m : int), Abs n = Abs m -> n = m.

Parameter ltb: int -> int -> bool.
(* Extract Inlined Constant ltb => "( < )". *)
Axiom ltb_lt : forall (n m : int), ltb n m = true <-> Abs n < Abs m.

Parameter leb: int -> int -> bool.
(* Extract Inlined Constant leb => "( <= )". *)
Axiom leb_le : forall (n m : int), leb n m = true <-> Abs n <= Abs m.

Lemma int_ltb_reflect : forall x y, reflect (Abs x < Abs y) (ltb x y).
Proof.
  intros x y.
  apply iff_reflect. symmetry. apply ltb_lt.
Qed.

Lemma int_leb_reflect : forall x y, reflect (Abs x <= Abs y) (leb x y).
Proof.
  intros x y.
  apply iff_reflect. symmetry. apply leb_le.
Qed.

Lemma Z_eqb_reflect : forall x y, reflect (x = y) (Z.eqb x y).
Proof.
  intros x y.
  apply iff_reflect. symmetry. apply Z.eqb_eq.
Qed.

Lemma Z_ltb_reflect : forall x y, reflect (x < y) (Z.ltb x y).
Proof.
  intros x y.
  apply iff_reflect. symmetry. apply Z.ltb_lt.
Qed.

Lemma Z_leb_reflect : forall x y, reflect (x <= y) (Z.leb x y).
Proof.
  intros x y.
  apply iff_reflect. symmetry. apply Z.leb_le.
Qed.

Lemma Z_gtb_reflect : forall x y, reflect (x > y) (Z.gtb x y).
Proof.
  intros x y.
  apply iff_reflect. symmetry. rewrite Z.gtb_ltb. rewrite Z.gt_lt_iff. apply Z.ltb_lt.
Qed.

Lemma Z_geb_reflect : forall x y, reflect (x >= y) (Z.geb x y).
Proof.
  intros x y.
  apply iff_reflect. symmetry. rewrite Z.geb_leb. rewrite Z.ge_le_iff. apply Z.leb_le.
Qed.

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

Ltac bdall := repeat (simpl; bdestruct_guard; try lia; auto).

(* ################################################################# *)
(** * Insertion Sort, Extracted *)

(** We're ready to state insertion sort with [int], and to extract it: *)

Fixpoint ins_int (i : int) (l : list int) :=
  match l with
  | [] => [i]
  | h :: t => if leb i h then i :: h :: t else h :: ins_int i t
  end.

Fixpoint sort_int (l : list int) : list int :=
  match l with
  | [] => []
  | h :: t => ins_int h (sort_int t)
  end.

(* Recursive Extraction sort_int. *)

Inductive sorted : list int -> Prop :=
| sorted_nil:
    sorted []
| sorted_1: forall x,
    sorted [x]
| sorted_cons: forall x y l,
    Abs x <= Abs y -> sorted (y :: l) -> sorted (x :: y :: l).

Hint Constructors sorted : core.

Theorem sort_int_correct : forall (al : list int),
    Permutation al (sort_int al) /\ sorted (sort_int al).
Proof.
  (* FILL IN HERE *) Admitted.

(* ################################################################# *)
(** * Binary Search Trees, Extracted *)

Definition key := int.

Inductive tree (V : Type) : Type :=
  | E : tree V
  | T : tree V -> key -> V -> tree V -> tree V.

Arguments E {V}.
Arguments T {V}.

Definition empty_tree {V : Type} : tree V := E.

Fixpoint lookup {V : Type} (default : V) (x : key) (t : tree V) : V :=
  match t with
  | E => default
  | T l k v r => if ltb x k then lookup default x l
                else if ltb k x then lookup default x r
                     else v
  end.

Fixpoint insert {V : Type} (x : key) (v : V) (t : tree V) : tree V :=
  match t with
  | E => T E x v E
  | T l y v' r => if ltb x y then T (insert x v l) y v' r
                 else if ltb y x then T l y v' (insert x v r)
                      else T l x v r
  end.

Fixpoint elements_aux {V : Type}
         (t : tree V) (acc : list (key * V)) : list (key * V) :=
  match t with
  | E => acc
  | T l k v r => elements_aux l ((k, v) :: elements_aux r acc)
  end.

Definition elements {V : Type} (t : tree V) : list (key * V) :=
  elements_aux t [].

Theorem lookup_empty : forall (V : Type) (default : V) (k : key),
    lookup default k empty_tree = default.
Proof. auto. Qed.

Theorem lookup_insert_eq :
  forall (V : Type) (default : V) (t : tree V) (k : key) (v : V),
    lookup default k (insert k v t) = v.
Proof.
  (* FILL IN HERE *) Admitted.
(** [] *)

Theorem lookup_insert_neq :
  forall (V : Type) (default : V) (t : tree V) (k k' : key) (v : V),
    k <> k' -> lookup default k' (insert k v t) = lookup default k' t.
Proof.
  (* FILL IN HERE *) Admitted.



