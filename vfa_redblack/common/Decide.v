From QuickChick Require Import QuickChick.
From vfa_redblack_benchmarks Require Import Definitions.

Require Import String. Open Scope string.

(* ************************** [ NAT ] *************************** *)
Derive Show for nat.
Derive Arbitrary for nat.
Instance Dec_Eq_nat : Dec_Eq nat.
Proof. dec_eq. Qed.

(* ************************** [ BOOL ] *************************** *)
Derive Show for bool.
Derive Arbitrary for bool.
Instance Dec_Eq_bool : Dec_Eq bool.
Proof. dec_eq. Qed.

(* ************************** [ LIST ] *************************** *)
Instance show_list {T} `{_ : Show T} : Show (list T) := 
{| show := 
    let fix aux l :=
      match l with
      | nil => "nil"
      | cons x xs => "cons (" ++ show x ++ ") (" ++ aux xs ++ ")"
      end
    in aux
|}.
Derive Arbitrary for list.
Instance Dec_Eq_list {T} `{_ : Dec_Eq T}  : Dec_Eq (list T).
Proof. dec_eq. Qed.

(* ************************** [ OPTION ] *************************** *)
Instance show_option {T} `{_ : Show T} : Show (option T) := 
{| show := 
    let fix aux l :=
      match l with
      | None => "None"
      | Some x => "Some (" ++ show x ++ ")"
      end
    in aux
|}.

Notation "a :: b"  := (cons a b).
Notation "[]"  := (nil).

(* ********************************************************************** *)
(* ************************ [ REDBLACK TYPES ] ************************** *)
(* ********************************************************************** *)

Derive Show for color.
Derive Arbitrary for color.
Instance Dec_Eq_color : Dec_Eq color.
Proof. dec_eq. Qed.

Derive Show for value.
Derive Arbitrary for value.
Instance Dec_Eq_value : Dec_Eq value.
Proof. dec_eq. Qed.

Instance show_tree : Show (tree) := 
{| show := 
    let fix aux l :=
      match l with
      | E => "E"
      | T c l k v r => "T (" ++ show c ++ ") (" ++ aux l ++ ") (" ++ show k ++ ") (" ++ show v ++ ") (" ++ aux r ++ ")"
      end
    in aux
|}.

Derive Arbitrary for tree.
Instance Dec_Eq_tree : Dec_Eq (tree).
Proof. dec_eq. Qed.

Close Scope string.

(* **************************************************************** *)
(* ************************** [ FORALL ] ************************** *)
(* **************************************************************** *)
(* Forall definitions and lemmas at: https://coq.inria.fr/doc/master/stdlib/Coq.Lists.List.html *)
Instance forall_dec {T} `{_ : Dec T} (f : T -> Prop) `{forall (x : T), Dec (f x)} (ls : list T) : (Dec (Forall f ls)).
Proof.
  dec_eq. induction ls.
  - left. apply Forall_nil.
  - destruct IHls.
  + assert (P: {f a} + {~ f a}). apply H0. destruct P.
  ++ left. apply Forall_cons. auto. auto.
  ++ right. unfold not. intros. unfold not in n. apply n. apply Forall_inv in H1. auto.
  + right. unfold not; intros. unfold not in n. apply n. apply Forall_inv_tail in H1. auto.
Qed.

(* **************************************************************** *)
(* ************************** [ FORALLT ] ************************** *)
(* **************************************************************** *)
Instance ForallT_dec (P: nat -> value -> Prop) `{forall (k : nat) (x : value), Dec (P k x)} (t: tree) : (Dec (ForallT P t)).
Proof. 
  dec_eq. induction t.
  - left. simpl. auto.
  - simpl.
  + assert (Q: {P n v} + {~ P n v}). apply H. destruct Q.
  destruct IHt1. destruct IHt2. 
  left. auto. 
  right. unfold not. intros. destruct H0. destruct H1. contradiction. 
  right. unfold not. intros. destruct H0. destruct H1. contradiction.
  right. unfold not. intros. destruct H0. contradiction.
Qed.

(* **************************************************************** *)
(* *************************** [ BST ] **************************** *)
(* **************************************************************** *)

Instance BST_dec (t: tree) : (Dec (BST t)).
Proof. 
  dec_eq. induction t.
  - left. apply BST_E.
  - assert (Q1: {ForallT (fun (y : nat) (_ : value) => y < n) t1} + {~ ForallT (fun (y : nat) (_ : value) => y < n) t1}).
  apply ForallT_dec. intros. dec_eq. apply lt_dec. 
  assert (Q2: {ForallT (fun (y : nat) (_ : value) => n < y) t2} + {~ ForallT (fun (y : nat) (_ : value) => n < y) t2}).
  apply ForallT_dec. intros. dec_eq. apply lt_dec.
  destruct IHt1. 
  + destruct IHt2. destruct Q1. destruct Q2.
  ++ left. apply BST_T. auto. auto. auto. auto.
  ++ right. unfold not. intros. inversion H. contradiction.
  ++ right. unfold not. intros. inversion H. contradiction.
  ++ right. unfold not. intros. inversion H. contradiction.
  + right. unfold not. intros. inversion H. contradiction.
Qed.

(* **************************************************************** *)
(* ************************ [ Redblack ] ************************** *)
(* **************************************************************** *)

Fixpoint RBb (t : tree) (c : color) (n : nat) : bool :=
  match t,c,n with
  | E, _, _ => n =? 0
  | T Red l k v r, Black,_ => (RBb l Red n) && (RBb r Red n)
  | T Black l k v r, _, S m => (RBb l Black m) && (RBb r Black m) 
  | _, _, _ => false
  end.

Lemma if_RBb_RB_eq (t : tree) (c : color) (n : nat) : RB t c n -> RBb t c n = true.
Proof.
  intros. induction H.
  - reflexivity.
  - simpl. rewrite IHRB1. rewrite IHRB2. auto.
  - simpl. rewrite IHRB1. rewrite IHRB2. auto.
Qed.

Lemma if_RB_RBb_eq (t : tree) (c : color) (n : nat) : RBb t c n = true -> RB t c n.
Proof.
  intros. generalize dependent n. generalize dependent c. induction t.
  - intros. destruct n. apply RB_leaf. simpl in H. discriminate.
  - intros. destruct c eqn:C.
  -- destruct c0 eqn:C0. simpl in H. discriminate. simpl in H. apply andb_prop in H. destruct H.
  apply RB_r. apply IHt1. assumption. apply IHt2. assumption.
  -- destruct n0. simpl in H. discriminate. simpl in H. apply andb_prop in H. destruct H.
  apply RB_b. apply IHt1. assumption. apply IHt2. assumption.
Qed.

Theorem RB_bool (t : tree) (c : color) (n : nat) : RBb t c n = true <-> RB t c n.
Proof. split. apply if_RB_RBb_eq. apply if_RBb_RB_eq. Qed.

Instance RB_dec (t : tree) (c : color) (n : nat) : (Dec (RB t c n)).
Proof. 
  dec_eq. destruct (RBb t c n) eqn:B.
  left. rewrite <- RB_bool. assumption.
  right. unfold not. intros. rewrite <- RB_bool in H. rewrite H in B. discriminate.
Qed.

(* Inductive NearlyRB : tree -> nat -> Prop :=
| NearlyRB_r : forall (l r : tree) (k : nat) (v : nat) (n : nat),
    RB l Black n ->
    RB r Black n ->
    NearlyRB (T Red l k v r) n
| NearlyRB_b : forall (l r : tree) (k : nat) (v : nat) (n : nat),
    RB l Black n ->
    RB r Black n ->
    NearlyRB (T Black l k v r) (S n). *)

Definition NearlyRBb (t : tree) (n : nat) : bool :=
  match t,n with
  | T Red l k v r, _ => (RBb l Black n) && (RBb r Black n)
  | T Black l k v r, S m => (RBb l Black m) && (RBb r Black m) 
  | _,_ => false
  end.

Lemma if_NearlyRBb_NearlyRB_eq (t : tree) (n : nat) : NearlyRB t n -> NearlyRBb t n = true.
Proof.
  intros. induction H.
  - simpl. rewrite andb_true_iff. split. apply RB_bool. assumption. apply RB_bool. assumption.
  - simpl. rewrite andb_true_iff. split. apply RB_bool. assumption. apply RB_bool. assumption.
Qed.

Lemma if_NearlyRB_NearlyRBb_eq (t : tree) (n : nat) : NearlyRBb t n = true -> NearlyRB t n.
Proof.
  intros. induction t.
  - simpl in H. discriminate H.
  - destruct c eqn:C. 
  -- simpl in H. apply andb_prop in H. destruct H. apply NearlyRB_r. 
  apply RB_bool. assumption. apply RB_bool. assumption.
  -- simpl in H. destruct n. discriminate. apply andb_prop in H. destruct H.
  apply NearlyRB_b. apply RB_bool. assumption. apply RB_bool. assumption.
Qed.

Theorem NearlyRB_bool (t : tree) (n : nat) : NearlyRBb t n = true <-> NearlyRB t n.
Proof. split. apply if_NearlyRB_NearlyRBb_eq. apply if_NearlyRBb_NearlyRB_eq. Qed.

Instance NearlyRB_dec (t : tree) (n : nat) : (Dec (NearlyRB t n)).
Proof. 
  dec_eq. destruct (NearlyRBb t n) eqn:B.
  left. rewrite <- NearlyRB_bool. assumption.
  right. unfold not. intros. rewrite <- NearlyRB_bool in H. rewrite H in B. discriminate.
Qed.

Instance uncurry_dec {X Y : Type} (f : X -> Y -> Prop) `{forall (k : X) (x : Y), Dec (f k x)} (p : X * Y) : Dec (uncurry f p).
Proof.
  dec_eq. destruct p. assert (P: {f x y} + {~ f x y}). apply H. destruct P.
  left. unfold uncurry. assumption. right. unfold not. unfold uncurry. intros. contradiction.
Qed.

Instance forall_prod_dec {X Y : Type} (f : X * Y -> Prop) `{forall (x : (X * Y)), Dec (f x)} (ls : list (X * Y)) : (Dec (Forall f ls)).
Proof.
  dec_eq. induction ls.
  - left. apply Forall_nil.
  - destruct IHls.
  + assert (P: {f a} + {~ f a}). apply H. destruct P.
  ++ left. apply Forall_cons. auto. auto.
  ++ right. unfold not. intros. unfold not in n. apply n. apply Forall_inv in H0. auto.
  + right. unfold not; intros. unfold not in n. apply n. apply Forall_inv_tail in H0. auto.
Qed.