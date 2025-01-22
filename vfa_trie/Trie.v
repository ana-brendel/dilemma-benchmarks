(** * Trie:  Number Representations and Efficient Lookup Tables *)

(** * A Simple Program That's Waaaaay Too Slow. *)

From Coq Require Import Strings.String.  (* for manual grading *)
From Coq Require Import ZArith.
From Coq Require Import PArith.
From VFA Require Import Perm.
Import FunctionalExtensionality.

(* ################################################################# *)
(** * Efficient Positive Numbers

    We can do better; we _must_ do better.  In fact, Coq's integer type,
     called [Z], is a binary representation (not unary), so that operations
     such as [plus] and [leq] take time linear in the number of bits, that is,
     logarithmic in the value of the numbers.  Here we will explore how [Z]
     is built. *)

Module Integers.

Inductive positive : Set :=
  | xI : positive -> positive
  | xO : positive -> positive
  | xH : positive.

Definition ten := xO (xI (xO xH)).

Fixpoint positive2nat (p: positive) : nat :=
  match p with
  | xI q => 1 + 2 * positive2nat q
  | xO q => 0 + 2 * positive2nat q
  | xH => 1
 end.

Fixpoint print_in_binary (p: positive) : list nat :=
  match p with
  | xI q => print_in_binary q ++ [1]
  | xO q =>print_in_binary q ++ [0]
  | xH => [1]
 end.

Notation "p ~ 1" := (xI p)
 (at level 7, left associativity, format "p '~' '1'").
Notation "p ~ 0" := (xO p)
 (at level 7, left associativity, format "p '~' '0'").

Fixpoint succ x :=
  match x with
    | p~1 => (succ p)~0
    | p~0 => p~1
    | xH => xH~0
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

Lemma succ_correct: forall p,
   positive2nat (succ p) = S (positive2nat p).
Proof.
(* FILL IN HERE *) Admitted.

Lemma addc_correct: forall (c: bool) (p q: positive),
   positive2nat (addc c p q) =
        (if c then 1 else 0) + positive2nat p + positive2nat q.
Proof.
(* FILL IN HERE *) Admitted.

Theorem add_correct: forall (p q: positive),
   positive2nat (add p q) = positive2nat p + positive2nat q.
Proof.
intros.
unfold add.
apply addc_correct.
Qed.

Inductive comparison : Set :=
    Eq : comparison | Lt : comparison | Gt : comparison.

Fixpoint compare x y {struct x}:=
  match x, y with
    | p~1, q~1 => compare p q
    | p~1, q~0 => match compare p q with Lt => Lt | _ => Gt end
    | p~1, xH => Gt

  (* DELETE THIS CASE!  Replace it with cases that actually work. *)
    | _, _ => Lt
  end.

Lemma positive2nat_pos:
 forall p, positive2nat p > 0.
Proof.
intros.
induction p; simpl; lia.
Qed.

Theorem compare_correct:
 forall x y,
  match compare x y with
  | Lt => positive2nat x < positive2nat y
  | Eq => positive2nat x = positive2nat y
  | Gt => positive2nat x > positive2nat y
 end.
Proof.
induction x; destruct y; simpl.
(* FILL IN HERE *) Admitted.

Inductive Z : Set :=
  | Z0 : Z
  | Zpos : positive -> Z
  | Zneg : positive -> Z.

End Integers.  

Inductive trie (A : Type) :=
    | Leaf : trie A
    | Node : trie A -> A -> trie A -> trie A.
Arguments Leaf {A}.
Arguments Node {A} _ _ _.

Definition trie_table (A: Type) : Type := (A * trie A)%type.

Definition empty {A: Type} (default: A) : trie_table A :=
      (default, Leaf).

Fixpoint look {A: Type} (default: A) (i: positive) (m: trie A): A :=
    match m with
    | Leaf => default
    | Node l x r =>
        match i with
        | xH => x
        | xO i' => look default i' l
        | xI i' => look default i' r
        end
    end.

Definition lookup {A: Type} (i: positive) (t: trie_table A) : A :=
   look (fst t) i (snd t).

Fixpoint ins {A: Type} default (i: positive) (a: A) (m: trie A): trie A :=
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

Definition insert {A: Type} (i: positive) (a: A) (t: trie_table A)
                 : trie_table A :=
  (fst t, ins (fst t) i a (snd t)).

Definition three_ten : trie_table bool :=
 insert 3 true (insert 10 true (empty false)).

(* ================================================================= *)
(** ** Lemmas About the Relation Between [lookup] and [insert] *)

Lemma look_leaf:
 forall {A} (a:A) j, look a j Leaf = a.
(* FILL IN HERE *) Admitted.


Lemma look_ins_same: forall {A} a k (v:A) t, look a k (ins a k v t) = v.
(* FILL IN HERE *) Admitted.

Lemma look_ins_other: forall {A} a j k (v:A) t,
   j <> k -> look a j (ins a k v t) = look a j t.
(* FILL IN HERE *) Admitted.

(* ================================================================= *)
(** ** Bijection Between [positive] and [nat]. *)

Definition nat2pos (n: nat) : positive := Pos.of_succ_nat n.
Definition pos2nat (n: positive) : nat := pred (Pos.to_nat n).

Lemma pos2nat2pos: forall p, nat2pos (pos2nat p) = p.
Proof. (* You don't need to read this proof! *)
intro. unfold nat2pos, pos2nat.
rewrite <- (Pos2Nat.id p) at 2.
destruct (Pos.to_nat p) eqn:?.
pose proof (Pos2Nat.is_pos p). lia.
rewrite <- Pos.of_nat_succ.
reflexivity.
Qed.

Lemma nat2pos2nat: forall i, pos2nat (nat2pos i) = i.
Proof. (* You don't need to read this proof! *)
intro. unfold nat2pos, pos2nat.
rewrite SuccNat2Pos.id_succ.
reflexivity.
Qed.

Lemma pos2nat_injective: forall p q, pos2nat p = pos2nat q -> p=q.
(* FILL IN HERE *) Admitted.

Lemma nat2pos_injective: forall i j, nat2pos i = nat2pos j -> i=j.
(* FILL IN HERE *) Admitted.

(* ================================================================= *)
(** ** Proving That Tries are a "Table" ADT. *)

(** Representation invariant.  Under what conditions is a trie
    well-formed?  Fill in the simplest thing you can, to start; then
    correct it later as necessary. *)

Definition is_trie {A: Type} (t: trie_table A) : Prop
(* REPLACE THIS LINE WITH ":= _your_definition_ ." *). Admitted.

Definition abstract {A: Type} (t: trie_table A) (n: nat) : A :=
  lookup (nat2pos n) t.

Definition Abs {A: Type} (t: trie_table A) (m: total_map A) :=
  abstract t = m.

(** **** Exercise: 2 stars, standard (is_trie)

    If you picked a _really simple_ representation invariant, these should be easy.
    Later, if you need to change the representation invariant in order to
    get the [_relate] proofs to work, then you'll need to fix these proofs. *)

Theorem empty_is_trie: forall {A} (default: A), is_trie (empty default).
(* FILL IN HERE *) Admitted.

Theorem insert_is_trie: forall {A} i x (t: trie_table A),
   is_trie t -> is_trie (insert i x t).
(* FILL IN HERE *) Admitted.

(** **** Exercise: 2 stars, standard (empty_relate)

    Just unfold a bunch of definitions, use [extensionality], and
    use one of the lemmas you proved above, in the section
    "Lemmas about the relation between [lookup] and [insert]." *)

Theorem empty_relate: forall {A} (default: A),
    Abs (empty default) (t_empty default).
Proof.
(* FILL IN HERE *) Admitted.

(** **** Exercise: 2 stars, standard (lookup_relate)

    Given the abstraction relation we've chosen, this one should be really simple. *)

Theorem lookup_relate: forall {A} i (t: trie_table A) m,
    is_trie t -> Abs t m -> lookup i t = m (pos2nat i).
(* FILL IN HERE *) Admitted.

(** **** Exercise: 3 stars, standard (insert_relate)

    Given the abstraction relation we've chosen, this one should NOT be simple.
   However, you've already done the heavy lifting, with the lemmas
  [look_ins_same] and [look_ins_other].   You will not need induction here.
  Instead, unfold a bunch of things, use extensionality, and get to a case analysis
  on whether [pos2nat k =? pos2nat j].   To handle that case analysis,
   use [bdestruct]. You may also need [pos2nat_injective]. *)

Theorem insert_relate: forall {A} k (v: A) t cts,
    is_trie t ->
    Abs t cts ->
    Abs (insert k v t) (t_update cts (pos2nat k) v).
(* FILL IN HERE *) Admitted.

(* ================================================================= *)
(** ** Sanity Check *)

Example Abs_three_ten:
    Abs
       (insert 3 true (insert 10 true (empty false)))
       (t_update (t_update (t_empty false) (pos2nat 10) true) (pos2nat 3) true).
Proof.
try (apply insert_relate; [hnf; auto | ]).
try (apply insert_relate; [hnf; auto | ]).
try (apply empty_relate).
(* Change this to Qed once you have [is_trie] defined and working. *)
(* FILL IN HERE *) Admitted.

