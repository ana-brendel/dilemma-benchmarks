Load LFindLoad.
Load LFindLoad.
From TreeAutomata Require Import base.

From lfind Require Import LFind.
Require Import Arith.
Require Import BinNat.
From IntMap Require Import Allmaps.

From QuickChick Require Import QuickChick.
QCInclude "/home/anabrendel/lfind/benchmarks/tree-automata/base_tests/_lfind_lemma_M1_semantics_2_273/".
QCInclude ".".
Extract Constant defNumTests => "50".
Derive Show for bool.

        Derive Arbitrary for bool.

        Instance Dec_Eq_bool : Dec_Eq bool.

        Proof. dec_eq. Qed.


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

Definition genM0 {A} := M0 A.
Definition genM1 {A} := M1 A.
Definition genM2 {A} := M2 A.

(* (Map A) in typeclass GenSized *)
Definition genMap {A} (g : G A) : nat -> G (Map A) := 
    let fix aux sz := 
        match sz with
        | O => ret genM0
        | S z => 
            freq [
                (0, ret genM0) ; 
                (1, liftM2 genM1 arbitrary g) ; 
                (sz, liftM2 genM2 (aux z) (aux z))
            ]
        end
    in aux.

(* (Map A) in typeclass Gen *)
Definition genMapBounded {A} (g : G A) : G (Map A) := sized (genMap g).

(* (Map A) in the Shrink typeclass*)
Definition mapShrink {A} (x : A) := (@nil A).

Instance genMapInstanceGen {A} `{_ : Gen A} : Gen (Map A) := {| arbitrary := genMapBounded arbitrary |}.
Instance genMapInstanceShrink {A} : Shrink (Map A) := {| shrink := mapShrink |}.

Set Nested Proofs Allowed.
Instance Dec_Eq_map {A} `{_ : Dec_Eq A} : Dec_Eq (Map A).
Proof. dec_eq. Qed.

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


Lemma conj8_imp: forall {A} (x0 : ad) (x : ad) (e : A), @eq bool (N.eqb x x0) true \/
@eq (option A) (MapGet A (M1 A x e) x0) (@None A).
Admitted.
QuickChick conj8_imp.