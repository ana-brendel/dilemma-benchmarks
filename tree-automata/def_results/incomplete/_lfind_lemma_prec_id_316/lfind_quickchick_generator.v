Load LFindLoad.
Load LFindLoad.
From TreeAutomata Require Import defs.

From lfind Require Import LFind.
Require Import Bool.
Require Import Arith.
Require Import ZArith.
From IntMap Require Import Allmaps.
Require Import EqNat.
From TreeAutomataCoqGym Require Import bases.

Lemma lfind_state   (a : ad) (p : prec_list) (a0 : ad) (p2_1 : prec_list) (p1 : prec_list) (p2_0 : prec_list) (p0 : prec_list) : prec_contained p2_0 p2_0.
Admitted.

From QuickChick Require Import QuickChick.
QCInclude "/home/anabrendel/lfind/benchmarks/tree-automata/defs_tests/_lfind_lemma_prec_id_316/".
QCInclude ".".
Extract Constant defNumTests => "50".
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




Open Scope string_scope.

Parameter print : prec_list -> string -> prec_list.
Extract Constant print => "Extract.print".
Definition collect_data (a : ad) (p : prec_list) (a0 : ad) (p2_1 : prec_list) (p1 : prec_list) (p2_0 : prec_list) (p0 : prec_list) :=
 let lfind_var := "a:" ++ "(" ++ show a ++ ")"++ "|" ++"p:" ++ "(" ++ show p ++ ")"++ "|" ++"a0:" ++ "(" ++ show a0 ++ ")"++ "|" ++"p2_1:" ++ "(" ++ show p2_1 ++ ")"++ "|" ++"p1:" ++ "(" ++ show p1 ++ ")"++ "|" ++"p2_0:" ++ "(" ++ show p2_0 ++ ")"++ "|" ++"p0:" ++ "(" ++ show p0 ++ ")"
 in let lfind_v := print p0 lfind_var
 in lfind_state a p a0 p2_1 p1 p2_0 lfind_v.
QuickChick collect_data.
Success.