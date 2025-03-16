Set Warnings "-notation-overridden,-parsing,-deprecated-hint-without-locality".
From Coq Require Export Lists.List.
From Coq Require Export Bool.Bool.
From Coq Require Export Arith.Arith.
From Coq Require Export Arith.EqNat.
From Coq Require Export Permutation.
Require Import Lia.
Export ListNotations.

Definition geb (n m : nat) := m <=? n.
Hint Unfold geb : core.
Infix ">=?" := geb (at level 70) : nat_scope.
Definition gtb (n m : nat) := m <? n.
Hint Unfold gtb : core.
Infix ">?" := gtb (at level 70) : nat_scope.

Lemma eqb_reflect : forall x y, reflect (x = y) (x =? y).
Proof.
  intros x y. apply iff_reflect. symmetry.
  apply Nat.eqb_eq.
Qed.

Lemma ltb_reflect : forall x y, reflect (x < y) (x <? y).
Proof.
  intros x y. apply iff_reflect. symmetry.
  apply Nat.ltb_lt.
Qed.

Lemma leb_reflect : forall x y, reflect (x <= y) (x <=? y).
Proof.
  intros x y. apply iff_reflect. symmetry.
  apply Nat.leb_le.
Qed.

Hint Resolve ltb_reflect leb_reflect eqb_reflect : bdestruct.

Ltac bdestruct X :=
  let H := fresh in let e := fresh "e" in
   evar (e: Prop);
   assert (H: reflect e X); subst e;
    [eauto with bdestruct
    | destruct H as [H|H];
       [ | try first [apply not_lt in H | apply not_le in H]]].

(* Module Type PRIQUEUE.
  Parameter priqueue: Type.
  Definition key := nat.
  Parameter empty: priqueue.
  Parameter insert: key -> priqueue -> priqueue.
  Parameter delete_max: priqueue -> option (key * priqueue).
  Parameter merge: priqueue -> priqueue -> priqueue.
  Parameter priq: priqueue -> Prop.
  Parameter Abs: priqueue -> list key -> Prop.
  Axiom can_relate: forall p, priq p -> exists al, Abs p al.
  Axiom abs_perm: forall p al bl,
   priq p -> Abs p al -> Abs p bl -> Permutation al bl.
  Axiom empty_priq: priq empty.
  Axiom empty_relate: Abs empty nil.
  Axiom insert_priq: forall k p, priq p -> priq (insert k p).
  Axiom insert_relate:
        forall p al k, priq p -> Abs p al -> Abs (insert k p) (k::al).
  Axiom delete_max_None_relate:
        forall p, priq p -> (Abs p nil <-> delete_max p = None).
  Axiom delete_max_Some_priq:
      forall p q k, priq p -> delete_max p = Some(k,q) -> priq q.
  Axiom delete_max_Some_relate:
  forall (p q: priqueue) k (pl ql: list key), priq p ->
   Abs p pl ->
   delete_max p = Some (k,q) ->
   Abs q ql ->
   Permutation pl (k::ql) /\ Forall (ge k) ql.
  Axiom merge_priq: forall p q, priq p -> priq q -> priq (merge p q).
  Axiom merge_relate:
    forall p q pl ql al,
       priq p -> priq q ->
       Abs p pl -> Abs q ql -> Abs (merge p q) al ->
       Permutation al (pl++ql).
End PRIQUEUE. *)

(* Definition key := nat. *)

Inductive tree : Type :=
|  Node: nat -> tree -> tree -> tree
|  Leaf : tree.

(* Definition priqueue := list tree. *)

(* Definition empty : priqueue := nil. *)

Definition smash (t u:  tree) : tree :=
  match t , u with
  |  Node x t1 Leaf, Node y u1 Leaf =>
                   if  (x >? y) then Node x (Node y u1 t1) Leaf
                                else Node y (Node x t1 u1) Leaf
  | _ , _ => Leaf  (* arbitrary bogus tree *)
  end.

Fixpoint carry (q: list tree) (t: tree) : list tree :=
  match q, t with
  | nil, Leaf        => nil
  | nil, _            => t :: nil
  | Leaf :: q', _  => t :: q'
  | u :: q', Leaf  => u :: q'
  | u :: q', _       => Leaf :: carry q' (smash t u)
 end.

Definition insert (x: nat) (q: list tree) : list tree :=
     carry q (Node x Leaf Leaf).

Fixpoint join (p q: list tree) (c: tree) : list tree :=
  match p, q, c with
    [], _ , _            => carry q c
  | _, [], _             => carry p c
  | Leaf::p', Leaf::q', _              => c :: join p' q' Leaf
  | Leaf::p', q1::q', Leaf            => q1 :: join p' q' Leaf
  | Leaf::p', q1::q', Node _ _ _  => Leaf :: join p' q' (smash c q1)
  | p1::p', Leaf::q', Leaf            => p1 :: join p' q' Leaf
  | p1::p', Leaf::q',Node _ _ _   => Leaf :: join p' q' (smash c p1)
  | p1::p', q1::q', _                   => c :: join p' q' (smash p1 q1)
 end.

Fixpoint unzip (t: tree) (cont: list tree -> list tree) : list tree :=
  match t with
  |  Node x t1 t2   => unzip t2 (fun q => Node x t1 Leaf  :: cont q)
  | Leaf => cont nil
  end.

Definition heap_delete_max (t: tree) : list tree :=
  match t with
    Node x t1 Leaf  => unzip t1 (fun u => u)
  | _ => nil end.

Fixpoint find_max' (current: nat) (q: list tree) : nat :=
  match q with
  |  []         => current
  | Leaf::q' => find_max' current q'
  | Node x _ _ :: q' => find_max' (if (x >? current) then x else current) q'
  end.

Fixpoint find_max (q: list tree) : option nat :=
  match q with
  | [] => None
  | Leaf::q' => find_max q'
  | Node x _ _ :: q' => Some (find_max' x q')
 end.

Fixpoint delete_max_aux (m: nat) (p: list tree) : list tree * list tree :=
  match p with
  | Leaf :: p'   => let (j,k) := delete_max_aux m p'  in (Leaf::j, k)
  | Node x t1 Leaf :: p' =>
       if (m >? x)
       then (let (j,k) := delete_max_aux m p'
             in (Node x t1 Leaf::j,k))
       else (Leaf::p', heap_delete_max (Node x t1 Leaf))
  | _ => (nil, nil) 
  end.

Definition delete_max (q: list tree) : option (nat * list tree) :=
  match find_max q with
  | None => None
  | Some  m => let (p',q') := delete_max_aux m q
                            in Some (m, join p' q' Leaf)
  end.

Definition merge (p q: list tree) := join p q Leaf.

(* ################################################################# *)
(** * Characterization Predicates *)

Fixpoint pow2heapp (n: nat) (m: nat) (t: tree) :=
 match n, m, t with
    0, m, Leaf       => True
  | 0, m, Node _ _ _  => False
  | S _, m,Leaf    => False
  | S n', m, Node k l r  =>
       m >= k /\ pow2heapp n' k l /\ pow2heapp n' m r
 end.

Definition pow2heap (n: nat) (t: tree) :=
  match t with
    Node m t1 Leaf => pow2heapp n m t1
  | _ => False
  end.

Fixpoint priqq  (i: nat) (l: list tree) : Prop :=
   match l with
  | t :: l' => (t=Leaf \/ pow2heap i t) /\ priqq (S i) l'
  | nil => True
 end.

Definition priq (q: list tree) : Prop := priqq 0 q.

Inductive tree_elems: tree -> list nat -> Prop :=
| tree_elems_leaf: tree_elems Leaf nil
| tree_elems_node:  forall bl br v tl tr b,
           tree_elems tl bl ->
           tree_elems tr br ->
           Permutation b (v::bl++br) ->
           tree_elems (Node v tl tr) b.

Inductive priqueue_elems: list tree -> list nat -> Prop :=
| priqueue_elems_nil: priqueue_elems [] []
| priqueue_elems_cons: forall cons_tree rest_trees cons_elems rest_elems new_elems,
    tree_elems cons_tree cons_elems ->
    priqueue_elems rest_trees rest_elems ->
    Permutation new_elems (cons_elems ++ rest_elems) ->
    priqueue_elems (cons_tree :: rest_trees) new_elems.

Definition Abs (p: list tree) (al: list nat) := priqueue_elems p al.