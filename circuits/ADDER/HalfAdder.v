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


(* Contribution to the Coq Library   V6.3 (July 1999)                    *)

(****************************************************************)
(*           The Calculus of Inductive Constructions            *)
(*                       COQ v5.10                              *)
(*                                                              *)
(* Laurent Arditi.  Laboratoire I3S. CNRS ura 1376.             *)
(* Universite de Nice - Sophia Antipolis                        *)
(* arditi@unice.fr, http://wwwi3s.unice.fr/~arditi/lolo.html    *)
(*                                                              *)
(* file: HalfAdder.v                                            *)
(* contents: definition and verification of an half-adder       *)
(*                                                              *)
(****************************************************************)

(* Half adder sur les bits (bool) : rend la somme ou le carry *)
(* Verification: Theorem half_adder_ok *)

From CircuitsCoqGym Require Import Arith_compl. (* Require Export Arith_compl. *)
From CircuitsCoqGym Require Import Bool_compl. (* Require Export Bool_compl. *)

(****************************************************************)

Definition half_adder_sum (a b : bool) := xorb a b.
Definition half_adder_carry (a b : bool) := a && b.

(****************************************************************)

Lemma half_adder_sum_sym : forall a b : bool, half_adder_sum a b = half_adder_sum b a.
Proof.
    simple induction a; simple induction b; auto.
Qed. 

Lemma half_adder_carry_sym : forall a b : bool, half_adder_carry a b = half_adder_carry b a.
Proof.
    simple induction a; simple induction b; auto.
Qed. 

Lemma half_adder_sum_false : forall a : bool, half_adder_sum a false = a.
Proof.
    simple induction a; auto.
Qed. 

Lemma half_adder_carry_false : forall a : bool, half_adder_carry a false = false.
Proof.
    simple induction a; auto.
Qed. 

Lemma half_adder_sum_true : forall a : bool, half_adder_sum a true = negb a.
Proof. auto. Qed. 

Lemma half_adder_carry_true : forall a : bool, half_adder_carry a true = a.
Proof. simple induction a; auto. Qed.

(****************************************************************)

Theorem half_adder_ok : forall a b : bool,
bool_to_nat (half_adder_sum a b) + (bool_to_nat (half_adder_carry a b) + bool_to_nat (half_adder_carry a b)) =
bool_to_nat a + bool_to_nat b.
Proof.
    simple induction a; simple induction b; auto.
Qed.
