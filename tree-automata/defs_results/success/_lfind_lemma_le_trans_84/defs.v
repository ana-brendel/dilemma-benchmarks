Load LFindLoad.
From lfind Require Import LFind.
Unset Printing Notations.
Set Printing Implicit.

(* This program is free software; you can redistribute it and/or      *)
(* modify it under the terms of the GNU Lesser General Public License *)
(* as published by the Free Software Foundation; either version 2.1   *)
(* of the License, or (at your option) any later version.             *)
(*                                                                    *)
(* This program is distributed in the hope that it will be useful,    *)
(* but WITHOUT ANY WARRANTY; without even the implied warranty of     *)
(* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the      *)
(* GNU General Public License for more details.                       *)
(*                                                                    *)
(* You should have received a copy of the GNU Lesser General Public   *)
(* License along with this program; if not, write to the Free         *)
(* Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA *)
(* 02110-1301 USA                                                     *)


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

Scheme term_term_list_rec := Induction for term
  Sort Set
  with term_list_term_rec := Induction for term_list 
  Sort Set.

Scheme term_term_list_ind := Induction for term
  Sort Prop
  with term_list_term_ind := Induction for term_list 
  Sort Prop.

Lemma term_list_disj :
 forall l : term_list,
 l = tnil \/ (exists hd : term, (exists tl : term_list, l = tcons hd tl)).
Proof.
	simple induction l. left. trivial. right. split with t. split with t0.
	trivial.
Qed.

Fixpoint lst_length (l : term_list) : nat :=
  match l with
  | tnil => 0
  | tcons _ l' => S (lst_length l')
  end.

Fixpoint term_high (t : term) : nat :=
  match t with
  | app a l => S (term_high_0 l)
  end
 
 with term_high_0 (l : term_list) : nat :=
  match l with
  | tnil => 0
  | tcons hd tl => max (term_high hd) (term_high_0 tl)
  end.

Lemma high_aux_0 :
 forall (a : ad) (l : term_list), S (term_high_0 l) <= term_high (app a l).
Proof.
	intros. unfold term_high in |- *. unfold term_high_0 in |- *. exact (le_n_n _).
Qed.

Lemma high_aux_1 :
 forall (a : ad) (l : term_list), S (term_high_0 l) = term_high (app a l).
Proof.
	intros. unfold term_high in |- *. unfold term_high_0 in |- *. trivial.
Qed.

(* Helper Lemma = high_aux_0, defined above *)
(* Helper Lemma = le_n_S, ∀ n m: n ≤ m → S n ≤ S m *)
(* Helper Lemma = Nat.le_trans, ∀ n m p : nat, n ≤ m → m ≤ p → n ≤ p *)
Lemma high_aux_2 : forall (l : term_list) (c : ad), 1 <= term_high (app c l).
Proof.
	intros. cut (S (term_high_0 l) <= term_high (app c l)).
	intro. cut (1 <= S (term_high_0 l)). intro.
  lfind_debug.
	Admitted.

  (* apply le_trans with (m := (S (term_high_0 l))).
	apply H0. apply H.
  apply le_n_S. apply le_0_n.
  apply high_aux_0.
Qed. *)
