Load LFindLoad.
Load LFindLoad.
From TreeAutomata Require Import base.

From lfind Require Import LFind.
Require Import Arith.
Require Import BinNat.
From IntMap Require Import Allmaps.

From QuickChick Require Import QuickChick.
QCInclude "/home/anabrendel/lfind/benchmarks/tree-automata/base_tests/_lfind_lemma_M1_semantics_1_267/".
QCInclude ".".
Extract Constant defNumTests => "50".
From QuickChick Require Import QuickChick Tactics.
Import QcNotation.

Open Scope string_scope.
Fixpoint show_pos p :=
    match p with
    | xH => "xH"
    | xO pp => "xO (" ++ show_pos pp ++ ")"
    | xI pp => "xI (" ++ show_pos pp ++ ")"
    end.

Definition show_N n :=
    match n with
    | N0 => "N0"
    | Npos p => "Npos (" ++ show_pos p ++ ")"
    end.

Instance show_ad : Show ad := {| show := show_N |}.

Instance show_map {A} `{_ : Show A} : Show (Map A) :=
{| show := 
    let fix aux l := 
        match l with
        | M0 _ => "M0"
        | M1 _ a b => "M1 (" ++ show a ++ ")(" ++ show b ++ ")"
        | M2 _ x y => "M2 (" ++ aux x ++ ") (" ++ aux y ++ ")"
        end
    in aux 
|}.

Derive Arbitrary for positive.
Derive Arbitrary for N.

Arguments M0 {A}.
Arguments M1 {A} _ _.
Arguments M2 {A} _ _.

(* (Map A) in typeclass GenSized *)
Definition genMap {A} (g : G A) : nat -> G (Map A) := 
    let fix aux sz := 
        match sz with
        | O => ret M0
        | S z => 
            freq [
                (0, ret M0) ; 
                (1, liftM2 M1 arbitrary g) ; 
                (sz, liftM2 M2 (aux z) (aux z))
            ]
        end
    in aux.

(* (Map A) in typeclass Gen *)
Definition genMapBounded {A} (g : G A) : G (Map A) := sized (genMap g).


Set Nested Proofs Allowed.
Instance Dec_Eq_map {A} `{_ : Dec_Eq A} : Dec_Eq (Map A).
Proof. dec_eq. Qed.



Open Scope string_scope.

Instance show_option {A} `{_ : Show A} : Show (option A) :=
{| show := 
    let fix aux l := 
        match l with
        | None => "None"
        | Some x => "Some ("++ show x ++")"
        end
    in aux 
|}.
Derive Arbitrary for option.
Instance Dec_Eq_option {A} `{_ : Dec_Eq A} : Dec_Eq (option A).
Proof. dec_eq. Qed.
Notation A := nat.


Lemma conj3: forall {A} (x0 : ad) (lf2 : Map A) (lf3 : option A), @eq (option A) (MapGet A lf2 x0) lf3.
Admitted.
QuickChick conj3.