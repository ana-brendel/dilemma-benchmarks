From QuickChick Require Import QuickChick Tactics.
Import QcNotation.
Require Import Ndec.
Require Import Ndec.
Require Import Ndigits.
Open Scope string_scope.

Definition show_type_name_BV (T : Type) := 
  match T with
  | bool => "bool"
  end.

Instance show_BV {T} `{_ : Show T} : Show (list T) := 
{| show := 
     let fix aux l :=
       match l with
       | nil => "@nil (" ++ show_type_name_BV T ++ ")" 
       | cons x xs => "@cons (" ++ show_type_name_BV T ++ ") " ++ show x ++ " (" ++ aux xs ++ ")"
       end
      in aux
|}.
Derive Arbitrary for list.
Instance Dec_Eq_BV {T} `{_ : Dec_Eq T}  : Dec_Eq (list T).
Proof. dec_eq. Qed.

(* Start tree-automata stuff *)

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

Derive Arbitrary for positive.
Derive Arbitrary for N.

Instance Dec_Eq_ad : Dec_Eq ad.
Proof. dec_eq. Qed.


(* Map Instances *)
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


Definition genMapBounded {A} (g : G A) : G (Map A) := sized (genMap g).
Definition mapShrink {A} (x : A) := (@nil A).

Instance genMapInstanceGen {A} `{_ : Gen A} : Gen (Map A) := {| arbitrary := genMapBounded arbitrary |}.
Instance genMapInstanceShrink {A} : Shrink (Map A) := {| shrink := mapShrink |}.

Set Nested Proofs Allowed.
Instance Dec_Eq_map {A} `{_ : Dec_Eq A} : Dec_Eq (Map A).
Proof. dec_eq. Qed.

(* Terms and Term_List Instances *)
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

(* Prec_list Instances *)

Fixpoint show_prec_list_fix p := 
    match p with
    | prec_cons a p1 p2 => "prec_cons (" ++ show a ++ ") (" ++ show_prec_list_fix p1 ++ ") (" ++ show_prec_list_fix p2 ++ ")"
    | prec_empty => "prec_empty"
    end.

Instance show_prec_list : Show (prec_list) := {| show := show_prec_list_fix |}.

Derive Arbitrary for prec_list.

Lemma eq_prec_cons_def (a1 a2 : ad) (p1a p1b p2a p2b : prec_list) : ((a1 = a2) /\ (p1a = p2a) /\ (p1b = p2b)) <-> ((prec_cons a1 p1a p1b) = (prec_cons a2 p2a p2b)).
Proof.
    intros. split.
    - intros. destruct H. destruct H0. rewrite H. rewrite H0. rewrite H1. auto.
    - intros. inversion H. auto.
Qed.

Fixpoint prec_list_eqb (p1 p2 : prec_list) : bool :=
    match p1,p2 with
    | prec_cons a1 p1 pp1, prec_cons a2 p2 pp2  => andb (prec_list_eqb pp1 pp2) (andb (Neqb a1 a2) (prec_list_eqb p1 p2))
    | prec_empty, prec_empty => true
    | _,_ => false
    end.

Definition prec_list_ind2 (P : prec_list -> Prop) (f : P prec_empty)
    (f0 : (forall (a : ad) (l : prec_list) (l0 : prec_list), P l -> P l0 -> P (prec_cons a l l0))) :=
  fix F (t : prec_list) : P t :=
    match t with
    | prec_empty => f
    | prec_cons a0 t0 t1 => f0 a0 t0 t1 (F t0) (F t1)
    end.

Lemma if_prec_cons_eq : forall p1 p2, prec_list_eqb p1 p2 = true -> p1 = p2.
Proof.
    induction p1 using prec_list_ind2.
    - induction p2 using prec_list_ind2.
    * auto.
    * intros; discriminate H.
    - induction p2 using prec_list_ind2.
    * intros; discriminate H.
    * intros. rewrite <- eq_prec_cons_def. inversion H. 
    apply andb_true_iff in H1; destruct H1. apply andb_true_iff in H1; destruct H1. 
    split.
    + apply Neqb_complete in H1; auto.
    + split.
    ++ apply IHp1_1; auto.
    ++ apply IHp1_2; auto.
Qed.   

Lemma prec_list_eqb_refl : forall l, prec_list_eqb l l = true.
Proof.
    induction l using prec_list_ind2. 
    - auto.
    - simpl. apply andb_true_iff. split.
    + auto. 
    + apply andb_true_iff. split. apply Neqb_correct. auto.
Qed. 

Lemma fi_prec_cons_eq : forall p1 p2, p1 = p2 -> prec_list_eqb p1 p2 = true.
Proof.
    intros. rewrite H. destruct p2.
    - simpl. apply andb_true_iff. split.
    + apply prec_list_eqb_refl.
    + apply andb_true_iff; split. apply Neqb_correct. apply prec_list_eqb_refl.
    - auto.
Qed.

Instance Dec_Eq_prec_list : Dec_Eq prec_list.
Proof. 
    constructor. intros. unfold ssrbool.decidable.
    destruct (prec_list_eqb x y) eqn:E.
    - apply if_prec_cons_eq in E. auto.
    - right. apply add_neqb in E.  unfold not. intros. apply fi_prec_cons_eq in H. contradiction.
Qed.

(* State and DTA Instances *)

Instance Dec_Eq_state : Dec_Eq state. Proof. dec_eq. Qed.
Instance Dec_Eq_preDTA : Dec_Eq preDTA. Proof. dec_eq. Qed.
Instance Dec_Eq_DTA : Dec_Eq DTA. Proof. dec_eq. Qed.

Definition genState : nat -> G (state) := genMap arbitrary.
Definition genStateBounded : G (state) := sized (genState).
Instance genStateInstanceGen : Gen (state) := {| arbitrary := genStateBounded |}.
Instance genStateInstanceShrink : Shrink (state) := {| shrink := mapShrink |}.

Definition genPreDTA : nat -> G (preDTA) := genMap arbitrary.
Definition genPreDTABounded : G (preDTA) := sized (genPreDTA).
Instance genPreDTAInstanceGen : Gen (preDTA) := {| arbitrary := genPreDTABounded |}.
Instance genPreDTAInstanceShrink : Shrink (preDTA) := {| shrink := mapShrink |}.

Definition genDTABounded : G (DTA) := liftM2 dta genPreDTABounded arbitrary.
Instance genDTAInstanceGen : Gen (DTA) := {| arbitrary := genDTABounded |}.
Instance genDTAInstanceShrink : Shrink (DTA) := {| shrink := mapShrink |}.

Fixpoint show_state_fix s := 
    match s with
    | M0 _ => "M0 prec_list"
    | M1 _ a p => "M1 prec_list (" ++ show_N a ++ ") (" ++ show_prec_list_fix p ++ ")"
    | M2 _ s1 s2 => "M2 prec_list (" ++ show_state_fix s1 ++ ") (" ++ show_state_fix s2 ++ ")"
    end.

Fixpoint show_PreDTA_fix s := 
    match s with
    | M0 _ => "M0 state"
    | M1 _ a p => "M1 state (" ++ show_N a ++ ") (" ++ show_state_fix p ++ ")"
    | M2 _ s1 s2 => "M2 state (" ++ show_PreDTA_fix s1 ++ ") (" ++ show_PreDTA_fix s2 ++ ")"
    end.

Fixpoint show_DTA_fix d := 
    match d with dta p a => "dta (" ++ show_PreDTA_fix p ++ ") (" ++ show_N a ++ ")" end.

Instance show_state : Show (state) := {| show := show_state_fix |}.
Instance show_predta : Show (preDTA) := {| show := show_PreDTA_fix |}.
Instance show_dta : Show (DTA) := {| show := show_DTA_fix |}.

Instance Dec_prec_occur (a : ad) (p : prec_list) : Dec (prec_occur p a).
Proof. 
    dec_eq.
    induction p.
    - destruct (Neqb a a0) eqn:E.
    + apply Neqb_complete in E. rewrite E. left. apply prec_hd.
    + destruct IHp1.
    * left. apply prec_int0. auto.
    * destruct IHp2.
    ** left. apply prec_int1. auto.
    ** right. unfold not; intros. inversion H.
    *** rewrite H0 in E. rewrite Neqb_correct in E. discriminate E.
    *** unfold not in n. apply n. auto.
    *** unfold not in n0. apply n0. auto.
    - right. unfold not. intros. inversion H.
Qed.

Instance Dec_prec_contained (p q : prec_list) : Dec (prec_contained p q).
Proof.
    dec_eq.
    induction q.
    - destruct (prec_list_eqb p (prec_cons a q1 q2)) eqn:E.
    + left. apply if_prec_cons_eq in E. rewrite E. apply prec_id.
    + inversion IHq1.
    * left. apply prec_c_int0. auto.
    * inversion IHq2.
    ** left. apply prec_c_int1. auto.
    ** right. unfold not; intros. inversion H1.
    *** rewrite H3 in E. rewrite prec_list_eqb_refl in E. discriminate E.
    *** unfold not in H. apply H. auto.
    *** unfold not in H0. apply H0. auto.
    - induction p.
    -- right. unfold not; intros. inversion H.
    -- left. apply prec_id.
Qed.

Instance Dec_prec_in_state (s : state) (p : prec_list) : Dec (prec_in_state s p).
Proof. 
    dec_eq. unfold prec_in_state. induction s.
    - right. unfold not. intros. inversion H. discriminate H0.
    - destruct (prec_list_eqb a0 p) eqn:E.
    + apply if_prec_cons_eq in E. rewrite E. left. exists a. simpl. rewrite Neqb_correct. auto.
    + right. unfold not. intros. inversion H. destruct (Neqb a x) eqn:F.
    * apply Neqb_complete in F. rewrite F in H0. simpl in H0. rewrite Neqb_correct in H0.
    inversion H0. apply fi_prec_cons_eq in H2. rewrite H2 in E. discriminate E.
    * simpl in H0. rewrite F in H0. discriminate H0.
    - inversion IHs1.
    + left. inversion H. exists (N.double x). 
    assert (A: exists b, b = Ndouble x). exists (N.double x). auto. inversion A.
    assert (B: x0 = Ndouble x -> N.div2 x0 = x). intros. rewrite H1. simpl. apply N.div2_double.
    assert (C: Ndiv2 x0 = x). apply B. apply H1. 
    rewrite <- H0. rewrite <- H1. rewrite <- C. apply MapGet_M2_bit_0_0.
    rewrite H1. apply Ndouble_bit0.
    + inversion IHs2.
    ++ left. inversion H0. exists (N.succ_double x).
    assert (A: exists b, b = N.succ_double x). exists (N.succ_double x). auto. inversion A.
    assert (B: x0 = N.succ_double x -> N.div2 x0 = x). intros. rewrite H2. apply N.div2_succ_double.
    assert (C: Ndiv2 x0 = x). apply B. apply H2. inversion A.
    rewrite <- H1. rewrite <- H2. rewrite <- C. apply MapGet_M2_bit_0_1. rewrite H2. apply Ndouble_plus_one_bit0.
    ++ right. unfold not. intros. inversion H1. destruct (N.odd x) eqn:E.
    +++ unfold not in H0. apply H0. exists (N.div2 x). rewrite <- H2. apply eq_sym. apply MapGet_M2_bit_0_1. auto.
    +++ unfold not in H. apply H. exists (N.div2 x). rewrite <- H2. apply eq_sym. apply MapGet_M2_bit_0_0. auto.
Qed.

(* Fixpoint taille_0 (l : prec_list) : nat :=
  match l with
  | prec_empty => 0
  | prec_cons x y z => S (taille_0 y + taille_0 z)
  end.

Fixpoint taille_1 (s : state) : nat :=
  match s with
  | M0 _ => 0
  | M1 _ x y => taille_0 y
  | M2 _ x y => max (taille_1 x) (taille_1 y)
  end. *)

Definition smaller (s s1 s2 : state) : bool := (andb (Nat.leb (taille_1 s1) (taille_1 s)) (Nat.leb (taille_1 s2) (taille_1 s))).

Fixpoint state_eqb (s1 s2 : state) : bool :=
    match s1,s2 with
    | M0 _, M0 _ => true
    | M1 _ a1 p1, M1 _ a2 p2 => andb (Neqb a1 a2) (prec_list_eqb p1 p2)
    | M2 _ s1_1 s1_2, M2 _ s2_1 s2_2 => 
        andb (andb (smaller s1 s1_1 s1_2)  (smaller s2 s2_1 s2_2))  (andb (state_eqb s1_1 s2_1) (state_eqb s1_2 s2_2))
    |_,_ => false
    end.

Lemma if_state_eq : forall s1 s2, state_eqb s1 s2 = true -> s1 = s2.
Proof.
    induction s1.
    - destruct s2. 
    -- auto.
    -- simpl. intros. inversion H.
    -- simpl. intros. inversion H.
    - destruct s2.
    -- simpl. intros. inversion H.
    -- simpl. intros. apply andb_true_iff in H. destruct H. apply Neqb_complete in H.
    apply if_prec_cons_eq in H0. rewrite H; rewrite H0. reflexivity.
    -- simpl. intros. inversion H.
    - destruct s2. 
    -- simpl. intros. inversion H.
    -- simpl. intros. inversion H.
    -- intros. inversion H. apply andb_true_iff in H1. destruct H1.
    apply andb_true_iff in H1. destruct H1. apply andb_true_iff in H0. destruct H0.
    apply IHs1_1 in H1. apply IHs1_2 in H2. rewrite H1. rewrite H2. reflexivity.
Qed.

Lemma leb_max_l : forall n m, n <=? max n m = true.
Proof.
    intros. apply Nat.leb_le. generalize dependent n. induction m.
    - destruct n. auto. auto.
    - simpl. destruct n. apply le_0_n. simpl. transitivity (S (max n m)). 
    apply le_n_S. apply IHm. auto.
Qed.  

Lemma leb_max_r : forall n m, m <=? max n m = true.
Proof.
    intros. apply Nat.leb_le. generalize dependent m. induction n.
    - destruct m. auto. auto.
    - simpl. destruct m. apply le_0_n. simpl. transitivity (S (max n m)). 
    apply le_n_S. apply IHn. auto.
Qed. 

Lemma smaller_self: forall s1 s2, smaller (M2 prec_list s1 s2) s1 s2 = true.
Proof.
    intros. unfold smaller. simpl. apply andb_true_iff. split.
    apply leb_max_l. apply leb_max_r.
Qed.

Lemma state_eqb_refl : forall s, state_eqb s s = true.
Proof.
    induction s. 
    - auto. 
    - simpl. apply andb_true_iff. split. apply Neqb_correct. apply prec_list_eqb_refl.
    - simpl. apply andb_true_iff. split. 
    -- apply andb_true_iff. split. apply smaller_self. apply smaller_self.
    -- apply andb_true_iff. split. auto. auto.
Qed.   

Lemma fi_state_eq : forall s1 s2, s1 = s2 -> state_eqb s1 s2 = true.
Proof. intros. rewrite H. apply state_eqb_refl. Qed. 

Lemma state_eq_iff : forall s1 s2, s1 = s2 <-> state_eqb s1 s2 = true.
Proof. split. apply fi_state_eq. apply if_state_eq. Qed.

Instance Dec_state_in_dta (s : state) (d : preDTA) : Dec (state_in_dta d s).
Proof. 
    dec_eq. unfold state_in_dta. induction d.
    - right. unfold not. intros. inversion H. discriminate H0.
    - destruct (state_eqb a0 s) eqn:E.
    + apply state_eq_iff in E. rewrite E. left. exists a. simpl. rewrite Neqb_correct. auto.
    + right. unfold not. intros. inversion H. destruct (Neqb a x) eqn:F.
    * apply Neqb_complete in F. rewrite F in H0. simpl in H0. rewrite Neqb_correct in H0.
    inversion H0. apply state_eq_iff in H2. rewrite H2 in E. discriminate E.
    * simpl in H0. rewrite F in H0. discriminate H0.
    - inversion IHd1.
    + left. inversion H. exists (N.double x). 
    assert (A: exists b, b = Ndouble x). exists (N.double x). auto. inversion A.
    assert (B: x0 = Ndouble x -> N.div2 x0 = x). intros. rewrite H1. simpl. apply N.div2_double.
    assert (C: Ndiv2 x0 = x). apply B. apply H1. 
    rewrite <- H0. rewrite <- H1. rewrite <- C. apply MapGet_M2_bit_0_0.
    rewrite H1. apply Ndouble_bit0.
    + inversion IHd2.
    ++ left. inversion H0. exists (N.succ_double x).
    assert (A: exists b, b = N.succ_double x). exists (N.succ_double x). auto. inversion A.
    assert (B: x0 = N.succ_double x -> N.div2 x0 = x). intros. rewrite H2. apply N.div2_succ_double.
    assert (C: Ndiv2 x0 = x). apply B. apply H2. inversion A.
    rewrite <- H1. rewrite <- H2. rewrite <- C. apply MapGet_M2_bit_0_1. rewrite H2. apply Ndouble_plus_one_bit0.
    ++ right. unfold not. intros. inversion H1. destruct (N.odd x) eqn:E.
    +++ unfold not in H0. apply H0. exists (N.div2 x). rewrite <- H2. apply eq_sym. apply MapGet_M2_bit_0_1. auto.
    +++ unfold not in H. apply H. exists (N.div2 x). rewrite <- H2. apply eq_sym. apply MapGet_M2_bit_0_0. auto.
Qed.

(* Option instance *)
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