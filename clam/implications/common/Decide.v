From QuickChick Require Import QuickChick.
From clam_implication_benchmarks Require Import Definitions.

Require Import String. Open Scope string.

(* ************************** [ NAT ] *************************** *)
Derive Show for Nat.
Derive Arbitrary for Nat.
Instance Dec_Eq_Nat : Dec_Eq Nat.
Proof. dec_eq. Qed.

(* ************************** [ BOOL ] *************************** *)
Derive Show for bool.
Derive Arbitrary for bool.
Instance Dec_Eq_bool : Dec_Eq bool.
Proof. dec_eq. Qed.

(* ************************** [ LST ] *************************** *)
Instance show_Lst : Show Lst := 
{| show := 
    let fix aux l :=
      match l with
      | nil => "nil"
      | cons x y => "cons (" ++ show x ++ ") (" ++ aux y ++ ")"
      end
    in aux
|}.

Derive Arbitrary for Lst.
Instance Dec_Eq_Lst : Dec_Eq Lst.
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

(* ************************** [ MEM_PROP ] *************************** *)
Instance mem_prop_dec (n : Nat) (l : Lst) : Dec (mem_prop n l).
Proof.
  dec_eq. induction l.
  - assert (P: {n = n0} + {n <> n0}). apply (Nat_eq_dec n n0). destruct P.
  -- left. simpl. left. assumption.
  -- destruct IHl. left. simpl. right. assumption. right. unfold not. intros.
  inversion H. contradiction. contradiction.
  - right. simpl. auto.
Qed.

(* ************************** [ LST_SUBSET ] *************************** *)
Instance lst_subset_dec (l1 : Lst) (l2 : Lst) : Dec (lst_subset l1 l2).
Proof.
  dec_eq. induction l1.
  - simpl. destruct (mem_bool n l2). destruct IHl1.
  -- left. split. assumption. reflexivity.
  -- right. unfold not. intros. destruct H. contradiction.
  -- right. unfold not. intros. destruct H. inversion H0.
  - left. simpl. auto.
Qed.

(* ************************** [ LST_EQ ] *************************** *)
Instance lst_eq_dec (l1 : Lst) (l2 : Lst) : Dec (lst_eq l1 l2).
Proof.
  dec_eq. unfold lst_eq. 
  assert (P: {lst_subset l1 l2} + {~ lst_subset l1 l2}). apply lst_subset_dec.
  assert (Q: {lst_subset l2 l1} + {~ lst_subset l2 l1}). apply lst_subset_dec.
  destruct P.
  - destruct Q. left. split; assumption; assumption. right. unfold not; intros; destruct H; contradiction.
  - right. unfold not; intros; destruct H; contradiction.
Qed.

Close Scope string.