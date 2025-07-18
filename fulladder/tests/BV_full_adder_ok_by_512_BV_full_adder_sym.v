From Dilemma Require Import Dilemma.
From QuickChick Require Import QuickChick.

Require Import Bool.
Require Import Nat.
Require Import Arith.
Require Import Lia.

Definition half_adder_sum (b1 : bool) (b2: bool) : bool:=
match b1, b2 with
| true, true => false
| true, false => true
| false, true => true
| false, false => false
end.

Definition half_adder_carry (b1 : bool) (b2: bool) : bool:= 
match b1 with
| true => b2
| false => false
end.


Definition bool_to_nat (b : bool) :=
  match b with
  | true => 1
  | false => 0
  end.

Lemma half_adder_sum_sym:
  forall a b: bool, half_adder_sum a b = half_adder_sum b a.
Proof.
  induction a; induction b; auto.
Qed.

Lemma half_adder_carry_sym:
  forall a b: bool, half_adder_carry a b = half_adder_carry b a.
Proof.
simple  induction a; induction b; auto.
Qed.

Lemma half_adder_sum_false : forall a : bool, half_adder_sum a false = a.
Proof.
simple induction a; auto.
Qed.

Lemma half_adder_carry_false :
 forall a : bool, half_adder_carry a false = false.
Proof.
 simple induction a; auto.
Qed.

Lemma half_adder_sum_true : forall a : bool, half_adder_sum a true = negb a.
Proof.
auto.
Qed.

Lemma half_adder_carry_true : forall a : bool, half_adder_carry a true = a.
Proof.
simple induction a; auto.
Qed.

Theorem half_adder_ok :
 forall a b : bool,
 bool_to_nat (half_adder_sum a b) +
 (bool_to_nat (half_adder_carry a b) + bool_to_nat (half_adder_carry a b)) =
 bool_to_nat a + bool_to_nat b.
Proof.
simple induction a; simple induction b; auto.
Qed.


Definition full_adder_sum (a b c : bool) :=
  match true with
  | true => half_adder_sum (half_adder_sum a b) c
  | false => false
  end.

Definition full_adder_carry (a b c : bool) :=
  match half_adder_carry a b with
  | true => true
  | false => half_adder_carry (half_adder_sum a b) c
  end.

Lemma full_adder_sum_sym1 :
 forall a b c : bool, full_adder_sum a b c = full_adder_sum b a c.
Proof.
simple induction a; simple induction b; auto.
Qed.

Lemma full_adder_sum_sym2 :
 forall a b c : bool, full_adder_sum a b c = full_adder_sum a c b.
Proof.
simple induction b.
simple induction c.
auto.
unfold full_adder_sum in |- *.
rewrite half_adder_sum_false.
rewrite half_adder_sum_false.
auto.
unfold full_adder_sum in |- *. intro.
rewrite half_adder_sum_false.
rewrite half_adder_sum_false.
auto.
Qed.

Lemma full_adder_sum_false :
 forall a : bool, full_adder_sum a false false = a.
Proof.
 simple induction a; auto.
Qed.

Lemma full_adder_sum_true : forall a : bool, full_adder_sum a true true = a.
Proof.
simple induction a; auto.
Qed.

Lemma full_adder_carry_sym1 :
 forall a b c : bool, full_adder_carry a b c = full_adder_carry b a c.
Proof.
simple induction a; simple induction b; auto.
Qed.

Lemma full_adder_carry_sym2 :
 forall a b c : bool, full_adder_carry a b c = full_adder_carry a c b.
Proof.
simple induction b.
simple induction c.
auto.
unfold full_adder_carry in |- *.
rewrite half_adder_sum_false.
rewrite half_adder_carry_false.
rewrite half_adder_carry_false.
simpl in |- *.
elim (half_adder_carry a true); auto.
intros.
unfold full_adder_carry in |- *.
rewrite half_adder_carry_false.
rewrite half_adder_sum_false.
rewrite half_adder_carry_false.
simpl in |- *.
elim (half_adder_carry a c); auto.
Qed.

Lemma full_adder_carry_false :
 forall a : bool, full_adder_carry a false false = false.
Proof.
simple induction a; auto.
Qed.

Lemma full_adder_carry_true :
 forall a : bool, full_adder_carry a true true = true.
Proof.
simple induction a.
unfold full_adder_carry in |- *.
auto.
unfold full_adder_carry in |- *.
auto.
Qed.

Lemma full_adder_carry_true_false :
 forall a : bool, full_adder_carry a true false = a.
Proof.
simple induction a; auto.
Qed.

Lemma full_adder_carry_neg :
 forall a b : bool, full_adder_carry a (negb a) b = b.
Proof.
simple induction a; simple induction b; simpl in |- *.
rewrite full_adder_carry_sym1. 
rewrite full_adder_carry_true. trivial.
rewrite full_adder_carry_false. trivial.
rewrite full_adder_carry_true. trivial.
rewrite full_adder_carry_sym1. 
rewrite full_adder_carry_false. trivial.
Qed.

(****************************************************************)

Theorem full_adder_ok :
 forall a b c : bool,
 bool_to_nat (full_adder_sum a b c) +
 (bool_to_nat (full_adder_carry a b c) + bool_to_nat (full_adder_carry a b c)) =
 bool_to_nat a + bool_to_nat b + bool_to_nat c.
Proof.
simple induction a; simple induction b; simple induction c; auto.
Qed.

Lemma plus_permute2 : forall x y z : nat, x + y + z = x + z + y.
Proof.
intros. 
rewrite (Nat.add_comm x y).
rewrite (Nat.add_comm  x z).
rewrite Nat.add_comm .
symmetry  in |- *.
rewrite Nat.add_comm .
rewrite Nat.add_shuffle3.
auto with arith.
Qed.

Inductive boolList : Type :=
| Nil : boolList
| Cons : bool -> boolList -> boolList.

Derive Show for boolList. 
Derive Arbitrary for boolList.  
Instance Dec_Eq_boolList : Dec_Eq boolList. 
Proof. dec_eq. Qed.

(* Infix "::" := Cons (at level 60, right associativity). *)

Definition length : boolList -> nat :=
  fix length l :=
  match l with
   | Nil => O
   | Cons _ l' => S (length l')
  end.

Definition app : boolList -> boolList -> boolList :=
  fix app l m :=
  match l with
   | Nil => m
   | Cons a l1 => Cons a (app l1 m)
  end.

(* Infix "++" := app (right associativity, at level 60). *)

Lemma app_eq2 : forall (x : bool) (l l' : boolList), app (Cons x l) l' = Cons x  (app l l').
Proof.
auto. 
Qed.

Lemma length_eq2 :
 forall (x : bool) (l : boolList), length (Cons x l) = S (length l).
 Proof.
 auto with arith. Qed.

 Fixpoint bV_full_adder_sum_nil (l0: boolList) (b0: bool): boolList :=
  match l0 with
  | Nil => Nil
  | Cons b l1 => Cons (half_adder_sum b b0)
                      (bV_full_adder_sum_nil l1 (half_adder_carry b b0))
  end.

Fixpoint bV_full_adder_sum (l m: boolList) (bb: bool): boolList :=
  match l with
  | Nil => bV_full_adder_sum_nil m bb
  | Cons b l0 =>
    match m with
    | Nil =>
      Cons (half_adder_sum b bb) (bV_full_adder_sum l0 Nil (half_adder_carry b bb))
    | Cons b0 l1 =>
      Cons (full_adder_sum b b0 bb)
           (bV_full_adder_sum l0 l1 (full_adder_carry b b0 bb))
    end
  end.


Lemma BV_full_adder_sum_eq1 :
 forall b : bool, bV_full_adder_sum Nil Nil b = Nil.
Proof.
 auto.
Qed.

Lemma BV_full_adder_sum_eq2 :
 forall (vh : bool) (vt : boolList) (b : bool),
 bV_full_adder_sum Nil (Cons vh vt) b =
 Cons (half_adder_sum vh b)
   (bV_full_adder_sum Nil vt (half_adder_carry vh b)).
Proof.
 auto.
Qed.

Lemma BV_full_adder_sum_eq3 :
 forall (vh : bool) (vt : boolList) (b : bool),
 bV_full_adder_sum (Cons vh vt) Nil b =
 Cons (half_adder_sum vh b)
   (bV_full_adder_sum vt Nil (half_adder_carry vh b)).
Proof.
 auto.
Qed.

Lemma BV_full_adder_sum_eq4 :
 forall (vh : bool) (vt : boolList) (wh : bool) (wt : boolList) (b : bool),
 bV_full_adder_sum (Cons vh vt) (Cons wh wt) b =
 Cons (full_adder_sum vh wh b)
   (bV_full_adder_sum vt wt (full_adder_carry vh wh b)).
Proof.
 auto.
Qed.


Fixpoint bV_full_adder_carry_nil (l0: boolList) (bb: bool): bool :=
  match l0 with
  | Nil => bb
  | Cons b l1 => bV_full_adder_carry_nil l1 (half_adder_carry b bb)
  end.

Fixpoint bV_full_adder_carry (l m: boolList) (bb: bool) :=
  match l with
  | Nil => bV_full_adder_carry_nil m bb
  | Cons b l0 =>
    match m with
    | Nil => bV_full_adder_carry l0 Nil (half_adder_carry b bb)
    | Cons b0 l1 => bV_full_adder_carry l0 l1 (full_adder_carry b b0 bb)
    end
  end.


Lemma BV_full_adder_carry_eq1 :
 forall b : bool, bV_full_adder_carry Nil Nil b = b.
Proof.
 auto.
Qed.

Lemma BV_full_adder_carry_eq2 :
 forall (vh : bool) (vt : boolList) (b : bool),
 bV_full_adder_carry Nil (Cons vh vt) b =
 bV_full_adder_carry Nil vt (half_adder_carry vh b).
Proof.
 auto.
Qed.


Lemma BV_full_adder_carry_eq3 :
 forall (vh : bool) (vt : boolList) (b : bool),
 bV_full_adder_carry (Cons vh vt) Nil b =
 bV_full_adder_carry vt Nil (half_adder_carry vh b).

Proof.
 auto.
Qed.

Lemma BV_full_adder_carry_eq4 :
 forall (vh : bool) (vt : boolList) (wh : bool) (wt : boolList) (b : bool),
 bV_full_adder_carry (Cons vh vt) (Cons wh wt) b =
 bV_full_adder_carry vt wt (full_adder_carry vh wh b).

Proof.
 auto.
Qed.


Definition bV_full_adder (v w : boolList) (cin : bool) : boolList :=
  match true with
  |true => 
  app (bV_full_adder_sum v w cin)
    (Cons (bV_full_adder_carry v w cin) Nil)
  | false => Nil
  end.

(****************************************************************)

Lemma BV_full_adder_sum_v_nil_false :
 forall v : boolList, bV_full_adder_sum v Nil false = v.
Proof.
simple induction v. trivial. intros.
rewrite BV_full_adder_sum_eq3. 
rewrite half_adder_carry_false.
rewrite half_adder_sum_false. 
rewrite H; auto.
Qed.

Lemma BV_full_adder_carry_v_nil_false :
 forall v : boolList, bV_full_adder_carry v Nil false = false.
Proof.
simple induction v. trivial. intros.
rewrite BV_full_adder_carry_eq3. 
rewrite half_adder_carry_false.
trivial.
Qed.

Lemma BV_full_adder_sum_sym :
 forall (v w : boolList) (cin : bool),
 bV_full_adder_sum v w cin = bV_full_adder_sum w v cin.
Proof.
simple induction v. simple induction w. auto. intros.
rewrite BV_full_adder_sum_eq2. 
rewrite BV_full_adder_sum_eq3.
rewrite H. auto. simple induction w. intro.
rewrite BV_full_adder_sum_eq2. 
rewrite BV_full_adder_sum_eq3. rewrite H.
auto. intros. repeat rewrite BV_full_adder_sum_eq4. rewrite H.
do 2 rewrite full_adder_carry_sym1. 
do 2 rewrite full_adder_sum_sym1. auto.
Qed.

Lemma length_BV_full_adder_sum :
 forall (v w : boolList) (cin : bool),
 length v = length w -> length (bV_full_adder_sum v w cin) = length v.
Proof.
unfold length in |- *. simple induction v. simple induction w. intros. case cin. simpl in |- *. trivial.
simpl in |- *. trivial.
intros. absurd (length (Nil:boolList) = length (Cons b b0)).
simpl in |- *. discriminate. exact H0. simple induction w. simpl in |- *. intros. discriminate H0.
intros. simpl in |- *. rewrite H. trivial. generalize H1. simpl in |- *. auto.
Qed.

Lemma BV_full_adder_carry_sym :
 forall (v w : boolList) (cin : bool),
 bV_full_adder_carry v w cin = bV_full_adder_carry w v cin.
Proof.
simple induction v. simple induction w. auto. intros.
rewrite BV_full_adder_carry_eq2. 
rewrite BV_full_adder_carry_eq3.
rewrite H; auto. simple induction w. intros. 
rewrite BV_full_adder_carry_eq2.
rewrite BV_full_adder_carry_eq3.
rewrite H. auto. intros. 
do 2 rewrite BV_full_adder_carry_eq4.
rewrite H. rewrite full_adder_carry_sym1. auto.
Qed.

Lemma BV_full_adder_sym :
 forall (v w : boolList) (cin : bool),
 bV_full_adder v w cin = bV_full_adder w v cin.
Proof.
unfold bV_full_adder in |- *.
intros.
rewrite BV_full_adder_sum_sym. 
rewrite BV_full_adder_carry_sym. auto.
Qed.

Fixpoint bV_to_nat (v : boolList) : nat :=
  match v return nat with
  | Nil => 0
  | Cons b w => bool_to_nat b + (bV_to_nat w + bV_to_nat w)
  end.

Fixpoint power2 (n : nat) : nat :=
  match n with
  | O => 1
  | S x => power2 x + power2 x
  end.

Lemma BV_to_nat_app :
 forall (l n : boolList) (ll : nat),
 (******************)
 length l = ll -> bV_to_nat (app l n) = bV_to_nat l + power2 ll * bV_to_nat n.
Proof. Admitted.

Lemma BV_to_nat_app2 :
 forall l n : boolList,
 (*******************)
 bV_to_nat (app l n) = bV_to_nat l + power2 (length l) * bV_to_nat n.
Proof.
 intros. apply BV_to_nat_app. auto.
Qed.

Lemma BV_full_adder_nil_true_ok :
 forall v : boolList, bV_to_nat (bV_full_adder v Nil true) = S (bV_to_nat v).
Proof.
simple induction v; auto with arith. unfold bV_full_adder in |- *. intros.
rewrite BV_full_adder_sum_eq3. 
rewrite BV_full_adder_carry_eq3.
rewrite app_eq2. 
rewrite half_adder_carry_true.
simpl in |- *. elim b. rewrite H. simpl in |- *. auto with arith.
rewrite BV_full_adder_sum_v_nil_false.
rewrite BV_full_adder_carry_v_nil_false.
rewrite BV_to_nat_app2.
simpl in |- *. elim mult_n_O. elim plus_n_O. trivial with arith.
Qed.


Lemma BV_full_adder_nil_ok :
 forall (v : boolList) (cin : bool),
 bV_to_nat (bV_full_adder v Nil cin) = bV_to_nat v + bool_to_nat cin.
 Proof.
simple induction v. simple induction cin; auto with arith.
simple induction cin. rewrite BV_full_adder_nil_true_ok. simpl in |- *. rewrite Nat.add_1_r. reflexivity.
unfold bV_full_adder in |- *. rewrite BV_full_adder_sum_v_nil_false.
rewrite BV_full_adder_carry_v_nil_false. 
rewrite BV_to_nat_app2.
simpl in |- *. elim mult_n_O. elim plus_n_O. trivial with arith.
Qed.

(****************************************************************)

(* Holding off on this benchmark because of the compilation errors *)
(****************************************************************)
Theorem BV_full_adder_ok :
 forall (v w : boolList) (cin : bool),
 bV_to_nat (bV_full_adder v w cin) =
 bV_to_nat v + bV_to_nat w + bool_to_nat cin.
Proof.
simple induction v.
intros.
dilemma. Admitted.

(* rewrite BV_full_adder_sym.
simpl in |- *.
rewrite BV_full_adder_nil_ok.
auto with arith.

unfold bV_full_adder in |- *.
simple induction w.
rename b into a.
rename b0 into l.
simpl in |- *.
intro.
rewrite H.
simpl in |- *.
elim plus_n_O.
elim plus_n_O.
replace
 (bV_to_nat l + bool_to_nat (half_adder_carry a cin) +
  (bV_to_nat l + bool_to_nat (half_adder_carry a cin))) with
 (bool_to_nat (half_adder_carry a cin) + bool_to_nat (half_adder_carry a cin) +
  (bV_to_nat l + bV_to_nat l)).
repeat rewrite Nat.add_assoc.
replace
 (bool_to_nat (half_adder_sum a cin) + bool_to_nat (half_adder_carry a cin) +
  bool_to_nat (half_adder_carry a cin)) with
 (bool_to_nat (half_adder_sum a cin) +
  (bool_to_nat (half_adder_carry a cin) +
   bool_to_nat (half_adder_carry a cin))).
rewrite half_adder_ok.
rewrite (plus_permute2 (bool_to_nat a) (bool_to_nat cin) (bV_to_nat l)).
rewrite
 (plus_permute2 (bool_to_nat a + bV_to_nat l) (bool_to_nat cin) (bV_to_nat l))
 .
trivial with arith.

trivial with arith.

repeat rewrite Nat.add_assoc.
rewrite
 (plus_permute2 (bool_to_nat (half_adder_carry a cin))
    (bool_to_nat (half_adder_carry a cin)) (bV_to_nat l))
 .
rewrite (Nat.add_comm (bool_to_nat (half_adder_carry a cin)) (bV_to_nat l)).
rewrite
 (plus_permute2 (bV_to_nat l + bool_to_nat (half_adder_carry a cin))
    (bool_to_nat (half_adder_carry a cin)) (bV_to_nat l))
 .
trivial with arith.

 rename b into a.
 rename b0 into l.
 intros a0 l0.
 intros.
simpl in |- *.
rewrite H.
clear H.
elim cin; elim a.
rewrite full_adder_carry_sym1.
rewrite full_adder_carry_true.
rewrite full_adder_sum_sym1.
rewrite full_adder_sum_true.
simpl in |- *.
repeat rewrite plus_n_SO.
elim plus_n_Sm.
elim plus_n_Sm.
simpl in |- *.
elim plus_n_Sm.
repeat rewrite Nat.add_assoc.
lia.

elim a0.
simpl in |- *.
elim plus_n_Sm.
simpl in |- *.
elim plus_n_O.
elim plus_n_Sm.
elim plus_n_Sm.
elim plus_n_Sm.
elim plus_n_O.
repeat rewrite Nat.add_assoc.
rewrite (plus_permute2 (bV_to_nat l) (bV_to_nat l0) (bV_to_nat l)).
trivial with arith.

simpl in |- *.
repeat rewrite <- plus_n_Sm.
repeat rewrite <- plus_n_O.
repeat rewrite Nat.add_assoc.
try trivial with arith.
rewrite (plus_permute2 (bV_to_nat l) (bV_to_nat l0) (bV_to_nat l)).
try trivial with arith.

elim a0.
simpl in |- *.
repeat rewrite <- plus_n_Sm.
repeat rewrite <- plus_n_O.
repeat rewrite Nat.add_assoc.
simpl in |- *.
rewrite (plus_permute2 (bV_to_nat l) (bV_to_nat l0) (bV_to_nat l)).
trivial with arith.

simpl in |- *.
repeat rewrite <- plus_n_O.
repeat rewrite Nat.add_assoc.
rewrite (plus_permute2 (bV_to_nat l) (bV_to_nat l0) (bV_to_nat l)).
trivial with arith.

elim a0; simpl in |- *; repeat rewrite <- plus_n_Sm;
 repeat rewrite <- plus_n_O; repeat rewrite Nat.add_assoc;
 rewrite (plus_permute2 (bV_to_nat l) (bV_to_nat l0) (bV_to_nat l));
 trivial with arith.

Qed. *)