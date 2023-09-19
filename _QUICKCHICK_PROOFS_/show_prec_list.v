From QuickChick Require Import QuickChick Tactics.
Import QcNotation.
Require Import Ndec.

From IntMap Require Import Allmaps.

Require Import Bool.
Require Import Arith.
Require Import ZArith.
Require Import NArith.
Require Import EqNat.
Require Import Ndigits.
Require Import Ndec.

Definition ad := N. 
Notation Neqb := N.eqb.

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
        | M0 => "M0"
        | M1 a b => "M1 (" ++ show a ++ ")(" ++ show b ++ ")"
        | M2 x y => "M2 (" ++ aux x ++ ") (" ++ aux y ++ ")"
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

Inductive prec_list : Set :=
  | prec_cons : ad -> prec_list -> prec_list -> prec_list
  | prec_empty : prec_list.

Fixpoint show_prec_list_fix p := 
    match p with
    | prec_cons a p1 p2 => "prec_cons (" ++ show a ++ ") (" ++ show_prec_list_fix p1 ++ ") (" ++ show_prec_list_fix p2 ++ ")"
    | prec_empty => "prec_empty"
    end.

Instance show_term : Show (prec_list) := {| show := show_prec_list_fix |}.

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

Lemma add_neqb (b : bool) : b = false -> ~b = true.
Proof. destruct b. intros. inversion H. intros. auto. Qed.

Instance Dec_Eq_prec_list : Dec_Eq prec_list.
Proof. 
    constructor. intros. unfold ssrbool.decidable.
    destruct (prec_list_eqb x y) eqn:E.
    - apply if_prec_cons_eq in E. auto.
    - right. apply add_neqb in E.  unfold not. intros. apply fi_prec_cons_eq in H. contradiction.
Qed.

Definition state := Map prec_list.

Definition preDTA := Map state.

Inductive DTA : Type :=
    dta : preDTA -> ad -> DTA.

Inductive prec_occur : prec_list -> ad -> Prop :=
  | prec_hd :
      forall (a : ad) (pl0 pl1 : prec_list),
      prec_occur (prec_cons a pl0 pl1) a
  | prec_int0 :
      forall (a b : ad) (pl0 pl1 : prec_list),
      prec_occur pl0 b -> prec_occur (prec_cons a pl0 pl1) b
  | prec_int1 :
      forall (a b : ad) (pl0 pl1 : prec_list),
      prec_occur pl1 b -> prec_occur (prec_cons a pl0 pl1) b.


Inductive prec_contained : prec_list -> prec_list -> Prop :=
  | prec_id : forall p : prec_list, prec_contained p p
  | prec_c_int0 :
      forall (p p0 p1 : prec_list) (a : ad),
      prec_contained p p0 -> prec_contained p (prec_cons a p0 p1)
  | prec_c_int1 :
      forall (p p0 p1 : prec_list) (a : ad),
      prec_contained p p1 -> prec_contained p (prec_cons a p0 p1).

Definition prec_in_state (s : state) (p : prec_list) : Prop :=
    exists c : ad, MapGet prec_list s c = Some p.

Definition state_in_dta (d : preDTA) (s : state) : Prop :=
    exists a : ad, MapGet state d a = Some s.

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
    | M0 => "M0 prec_list"
    | M1 a p => "M1 prec_list (" ++ show_N a ++ ") (" ++ show_prec_list_fix p ++ ")"
    | M2 s1 s2 => "M2 prec_list (" ++ show_state_fix s1 ++ ") (" ++ show_state_fix s2 ++ ")"
    end.

Fixpoint show_PreDTA_fix s := 
    match s with
    | M0 => "M0 state"
    | M1 a p => "M1 state (" ++ show_N a ++ ") (" ++ show_state_fix p ++ ")"
    | M2 s1 s2 => "M2 state (" ++ show_PreDTA_fix s1 ++ ") (" ++ show_PreDTA_fix s2 ++ ")"
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

Fixpoint taille_0 (l : prec_list) : nat :=
  match l with
  | prec_empty => 0
  | prec_cons x y z => S (taille_0 y + taille_0 z)
  end.

Fixpoint taille_1 (s : state) : nat :=
  match s with
  | M0 => 0
  | M1 x y => taille_0 y
  | M2 x y => max (taille_1 x) (taille_1 y)
  end.

Definition smaller (s s1 s2 : state) : bool := (andb (Nat.leb (taille_1 s1) (taille_1 s)) (Nat.leb (taille_1 s2) (taille_1 s))).

Fixpoint state_eqb (s1 s2 : state) : bool :=
    match s1,s2 with
    | M0, M0 => true
    | M1 a1 p1, M1 a2 p2 => andb (Neqb a1 a2) (prec_list_eqb p1 p2)
    | M2 s1_1 s1_2, M2 s2_1 s2_2 => 
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