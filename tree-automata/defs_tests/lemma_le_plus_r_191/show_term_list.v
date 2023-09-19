From QuickChick Require Import QuickChick Tactics.
Import QcNotation.
Require Import Ndec.

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

Instance genTermListInstanceGen : Gen (term_list) := {| arbitrary := genTermListSized |}.
Instance genTermListInstanceShrink : Shrink (term_list) := {| shrink := shrinkGen |}.

Instance genTermInstanceGen : Gen (term) := {| arbitrary := genTermSized |}.
Instance genTermInstanceShrink : Shrink (term) := {| shrink := shrinkGen |}.

Definition term_list_ind2 (P : term_list -> Prop) (f : P tnil)
  (f0 : (forall (a : ad) (l : term_list) (l0 : term_list), P l -> P l0 -> P (tcons (app a l) l0))) :=
fix F (t : term_list) : P t :=
  match t as t0 return (P t0) with
  | tnil => f
  | tcons (app a0 t0) t1 => f0 a0 t0 t1 (F t0) (F t1)
  end.

(* This is unchanged from what you had. *)
Fixpoint term_eqb (t1 t2 : term) : bool :=
    match t1,t2 with
    | app a1 l1, app a2 l2  => andb (Neqb a1 a2) (term_list_eqb l1 l2)
    end
with term_list_eqb (l1 l2 : term_list) : bool :=
    match l1,l2 with
    | tnil, tnil => true
    | tcons t1 n1, tcons t2 n2 => andb (term_eqb t1 t2) (term_list_eqb n1 n2)
    | _, _ => false
    end.

Lemma if_term_list_eqb : forall l1 l2, term_list_eqb l1 l2 = true -> l1 = l2.
Proof.
intro l1.
induction l1 using term_list_ind2. destruct l2. 
    auto.
    simpl. intros. contradict H. auto.
destruct l2.
    simpl. intros. contradict H. auto.
    intro. destruct t. simpl in H.
    assert ((Neqb a a0 = true) /\ (term_list_eqb l1_1 t = true) /\ (term_list_eqb l1_2 l2) = true).
    destruct (Neqb a a0). destruct (term_list_eqb l1_1 t). destruct (term_list_eqb l1_2 l2).
    - split. reflexivity. split. reflexivity. reflexivity.
    - simpl in H. contradict H. auto.
    - simpl in H. contradict H. auto.
    - simpl in H. contradict H. auto.
    - inversion H0. inversion H2.
    assert (a = a0). apply Neqb_complete. assumption. rewrite H5.
    assert (l1_1 = t). apply IHl1_1. assumption. rewrite H6.
    assert (l1_2 = l2). apply IHl1_2. assumption. rewrite H7.
    reflexivity.
Qed.

Lemma eq_tcons_def (t1 t2 : term) (l1 l2 : term_list) : ((t1 = t2) /\ (l1 = l2)) <-> ((tcons t1 l1) = (tcons t2 l2)).
Proof.
    intros. split.
    - intros. destruct H. rewrite H. rewrite H0. auto.
    - intros. inversion H. auto.
Qed.

Lemma term_list_eqb_refl : forall l, term_list_eqb l l = true.
Proof.
    intros. induction l using term_list_ind2.
    - auto.
    - simpl term_list_eqb.
    assert (G1: Neqb a a = true). apply Neqb_correct.
    rewrite G1. rewrite IHl1. rewrite IHl2. auto.
Qed.

Lemma fi_term_list_eqb : forall l1 l2, l1 = l2 -> term_list_eqb l1 l2 = true.
Proof.
    intros. rewrite H. induction l2 using term_list_ind2.
    - auto.
    - simpl.
    assert (G1: Neqb a a = true). apply Neqb_correct.
    rewrite G1. simpl. rewrite term_list_eqb_refl. rewrite term_list_eqb_refl. auto.
Qed.

Theorem term_list_Eq_eq : forall l1 l2, term_list_eqb l1 l2 = true <-> l1 = l2.
Proof. split. apply if_term_list_eqb. apply fi_term_list_eqb. Qed.

Lemma eq_terms_def (a1 a2 : ad) (t1 t2 : term_list) : ((a1 = a2) /\ (t1 = t2)) <-> ((app a1 t1) = (app a2 t2)).
Proof. 
    intros. split.
    - intros. destruct H. rewrite H. rewrite H0. auto.
    - intros. inversion H. auto. 
Qed.

Theorem term_Eq_eq (t1 t2 : term) : term_eqb t1 t2 = true <-> t1 = t2.
Proof.
    split.
    * intros. destruct t1; destruct t2. rewrite <- eq_terms_def. inversion H. apply andb_prop in H1.
    destruct H1. apply Neqb_complete in H0. rewrite term_list_Eq_eq in H1. auto.
    * intros. destruct t1; destruct t2. simpl. inversion H.  
    assert (G1: Neqb a0 a0 = true). apply Neqb_correct.
    rewrite G1. simpl. rewrite term_list_eqb_refl. auto.
Qed. 

Lemma add_neqb (b : bool) : b = false -> ~b = true.
Proof. destruct b. intros. inversion H. intros. auto. Qed.

Instance Dec_Eq_term : Dec_Eq term.
Proof.
 constructor. intros. unfold ssrbool.decidable. destruct (term_eqb x y) eqn:H.
 - left. apply term_Eq_eq. apply H.
 - right. apply add_neqb in H. unfold not. rewrite <- term_Eq_eq. intros. contradiction.   
 Qed.

Instance Dec_Eq_term_list : Dec_Eq term_list.
 Proof.
  constructor. intros. unfold ssrbool.decidable. destruct (term_list_eqb x y) eqn:H.
  - left. apply term_list_Eq_eq. apply H.
  - right. apply add_neqb in H. unfold not. rewrite <- term_list_Eq_eq. intros. contradiction.
 Qed.