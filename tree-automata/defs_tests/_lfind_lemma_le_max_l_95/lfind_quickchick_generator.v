Load LFindLoad.
Load LFindLoad.
(* From TreeAutomata Require Import defs. *)

From lfind Require Import LFind.
Require Import Bool.
Require Import Arith.
Require Import ZArith.
From IntMap Require Import Allmaps.
Require Import EqNat.
From TreeAutomataCoqGym Require Import bases.


Inductive term : Set :=
    app : ad -> term_list -> term
with term_list : Set :=
  | tnil : term_list
  | tcons : term -> term_list -> term_list.

  Fixpoint term_high (t : term) : nat :=
  match t with
  | app a l => S (term_high_0 l)
  end
 
 with term_high_0 (l : term_list) : nat :=
  match l with
  | tnil => 0
  | tcons hd tl => max (term_high hd) (term_high_0 tl)
  end.

Lemma lfind_state   (t : term) (tl : term_list) : le (term_high t) (Nat.max (term_high t) (term_high_0 tl)).
Admitted.

From QuickChick Require Import QuickChick.
QCInclude "/home/anabrendel/lfind/benchmarks/tree-automata/defs_tests/_lfind_lemma_le_max_l_95/".
QCInclude ".".
Extract Constant defNumTests => "50".
From QuickChick Require Import QuickChick Tactics.
Import QcNotation.

(* Inductive term : Set :=
    app : ad -> term_list -> term
with term_list : Set :=
  | tnil : term_list
  | tcons : term -> term_list -> term_list. *)

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

Fixpoint show_term_fix t := 
    match t with
    | app a tl => "app (" ++ show a ++ ") (" ++ show_term_list_fix tl ++ ")"
    end 
with show_term_list_fix tl :=
    match tl with
    | tnil => "tnil"
    | tcons t l =>"tcons (" ++ show_term_fix t ++ ") (" ++ show_term_list_fix l ++ ")"
    end.

Instance show_term : Show (term) := {| show := show_term_fix |}.
Instance show_term_list : Show (term_list) := {| show := show_term_list_fix |}.

Derive Arbitrary for positive.
Derive Arbitrary for N.

Fixpoint genTerm sz : G (term) := 
    match sz with
    | O => liftM2 app arbitrary (ret tnil)
    | S z => 
        freq [
            (0, liftM2 app arbitrary (ret tnil)) ; 
            (sz, liftM2 app arbitrary (genTermList z))
        ]
    end
with genTermList zs : G (term_list) :=
    match zs with
    | O => ret tnil
    | S z => 
        freq [
            (0, ret tnil) ; 
            (1, liftM2 tcons (genTerm z) (ret tnil)) ; 
            (zs, liftM2 tcons (genTerm z) (genTermList z))
        ]
    end.

(* (Map A) in typeclass Gen *)
Definition genTermSized : G (term) := sized (genTerm).
Definition genTermListSized : G (term_list) := sized (genTermList).

(* (Map A) in the Shrink typeclass*)
Definition shrinkGen {A} (x : A) := (@nil A).

Instance genTermInstanceGen : Gen (term) := {| arbitrary := genTermSized |}.
Instance genTermInstanceShrink : Shrink (term) := {| shrink := shrinkGen |}.

Fixpoint term_helper (t1 : term) (t2 : term) : Prop :=
    match t1 with | app a1 tl1 => 
    match t2 with | app a2 tl2 => (and (eq true (N.eqb a1 a2)) (term_list_helper tl1 tl2)) 
    end end
with term_list_helper (tl1 : term_list) (tl2 : term_list) : Prop :=
    match (tl1, tl2) with
    | (tnil, tnil) => True
    | ((tcons t1 ttl1), (tcons t2 ttl2)) => (term_helper t1 t2) /\ (term_list_helper ttl1 ttl2)
    | _ => False
    end.

Lemma eq_term (n m : term) : (term_helper n m) -> n = m.
Proof.
    intros. destruct n. destruct m. simpl in H. destruct H. Admitted.


Instance Dec_Eq_term : Dec_Eq term.
Proof.
 constructor. intros. unfold ssrbool.decidable. left. destruct x. destruct y. 
 Qed.

(* Instance genTermListInstanceGen : Gen (term_list) := {| arbitrary := genTermListSized |}.
Instance genTermListInstanceShrink : Shrink (term_list) := {| shrink := shrinkGen |}.

Instance Dec_Eq_term_list : Dec_Eq term_list.
Proof. dec_eq. Qed. *)

Derive Show for nat.

Derive Arbitrary for nat.

Instance Dec_Eq_nat : Dec_Eq nat.
Proof. dec_eq. Qed.



Open Scope string_scope.

(* Parameter print : term_list -> string -> term_list.
Extract Constant print => "Extract.print".
Definition collect_data (t : term) (tl : term_list) :=
 let lfind_var := "t:" ++ "(" ++ show t ++ ")"++ "|" ++"tl:" ++ "(" ++ show tl ++ ")"
 in let lfind_v := print tl lfind_var
 in lfind_state t lfind_v.
QuickChick collect_data.
Success. *)
Lemma refl (t : nat) : @eq nat t t.
Definition test (t : nat) := refl t.
QuickChick test.