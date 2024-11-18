(* Including pieces of code/comments from file that Todd sent over, based on Huffman coding suite. *)
(* Need to run: opam install coq-huffman *)

From Coq Require Export Compare_dec.
From Coq Require Import ArithRing ListDec.
From Huffman Require Export Code ISort Weight UniqueKey.

(* From Todd: Add QuickChick and Monads stuff *)
From QuickChick Require Import QuickChick Tactics.
Import QcNotation.
Open Scope qc_scope.
(* Supress some annoying warnings: *)
Set Warnings "-extraction-opaque-accessed,-extraction".
Require Export ExtLib.Structures.Monads.
Export MonadNotation. Open Scope monad_scope.

Set Default Proof Using "Type".

(* Define binary tree --> leaf or node (consisting of two children trees) *)
Inductive btree : Type :=
| leaf : nat -> btree 
| node : btree -> btree -> btree.

(* **** FOR QUICKCHICK TO WORK --> ALLOWS LFIND TO WORK **** *)
(* From Todd: automatically derive Show and Arbitrary*)
Derive Show for btree.
Derive Arbitrary for btree.

(* From Todd: prove equality is decidable *)
Instance btree_eq_dec (t1 t2 : btree) : Dec (t1=t2).
Proof. constructor. dec_eq. Defined.

(* For the purposes of testing QuickChick *)
Conjecture broken: forall t, t = leaf 0.

(* Check with QuickChick *)
(* Expects: *** Failed after _ tests and _ shrinks *)
(* QuickChick broken. *)

(* Define belonging to tree *)
Inductive inb : btree -> btree -> Prop :=
| inleaf : forall t:btree, inb t t
| innodeL : forall t t1 t2:btree, inb t t1 -> inb t (node t1 t2)
| innodeR : forall t t1 t2:btree, inb t t2 -> inb t (node t1 t2).
#[local] Hint Constructors inb : core. (* Not sure what this is ??? *)

(* From Todd: prove (manually) that inb (or any prop we care about) is decidable *)
Instance inb_dec (t1 t2 : btree) : Dec (inb t1 t2).
Proof.
    constructor. dec_eq.
    induction t2.
    - destruct t1.
        assert({n0 = n} + {~ n0 = n}).
        { dec_eq. }
        + inversion H.
            * left. rewrite H0. apply inleaf.
            * right. intro. destruct H0. inversion H1. reflexivity.
        + right. intro. inversion H.
    - assert ({t1 = (node t2_1 t2_2)} + {~ t1 = (node t2_1 t2_2)}).
        { dec_eq. }
        inversion H.
        + left. rewrite H0. apply inleaf.
        + inversion IHt2_1.
            * left. apply innodeL. apply H1.
            * inversion IHt2_2.
                ** left. apply innodeR. apply H2.
                ** right. intro. inversion H3.
                    ++ rewrite <- H5 in H0. 
                    destruct H0. 
                    reflexivity.
                    ++ destruct H1. apply H6.
                    ++ destruct H2. apply H6. 
Defined.

(* Theorem showing that inb is transitive *)
Theorem inb_trans : forall t1 t2 t3, inb t1 t2 -> inb t2 t3 -> inb t1 t3.
Proof.
intros t1 t2 t3 H H1; generalize t1 H; elim H1; clear H H1 t1 t2 t3; auto.
Qed. (* Not clear on how this proof works*)

(* Check with QuickChick *)
(* Expects: +++ Passed _ tests *)
(* QuickChick inb_trans. *)

(* Print HintDb typeclass_instances. *)

(* This definition can be ran with QuickChick to support results of inb_trans. *)
Definition test_inb_trans := 
    forAll arbitrary (fun t1 =>
    forAll arbitrary (fun t2 =>
    forAll arbitrary (fun t3 =>
    (inb t1 t2)? ==> ((inb t2 t3)?) ==> ((inb t1 t3)?)))).

(* Tests with QuickChick as opposed to writing as theorem with proof. *)
(* Expects: *** Gave up! Passed only _ tests
            Discarded: _ *)
(* QuickChick test_inb_trans. *)

(* To have a more successful run of QuickChick, we can make a more efficient generator. *)
Fixpoint genInbT (size : nat) (t : btree) : G btree :=
    match size with
    | O => ret t
    | S nsize => 
        freq [ (2, ret t);
                (size,
                t1 <- genInbT nsize t;;
                t2 <- arbitrary;;
                ret (node t1 t2)) ;
                (size,
                t1 <- arbitrary;;
                t2 <- genInbT nsize t;;
                ret (node t1 t2))]
    end.

(* QUESTION --> what is the "freq" syntax? *)

(* Better version of testing inb_trans with generators *)
Definition best_test_inb_trans := 
    forAll arbitrary (fun t1 => 
    forAll (genInbT 5 t1) (fun t2 =>
    forAll (genInbT 5 t2) (fun t3 =>
    (inb t1 t2)? ==> ((inb t2 t3)?)
    ==> ((inb t1 t3)?)))).

(* Check with QuickChick *)
(* Expects: *** Passed _ tests (0 discards) *)
(* QuickChick best_test_inb_trans. *)

(* From Todd: By making appropriate type class we can install our generator for automatic use. *)
(* Instance inbGenSizedSuchThat (t : btree) : GenSizedSuchThat btree (fun t' => inb t t') :=
    {| arbitrarySizeST := fun s => x <- genInbT s t;; ret (Some x) |}. *)
(* QUESTION --> what is this syntax? *)

(* QuickChick inb_trans. *)

(* Fix the return to be small tree with leaf of 0 --> causes no counter examples to conjecture below *)
(* Instance inbGenSizedSuchThat (t : btree) : GenSizedSuchThat btree (fun t' => inb t t') :=
    {| arbitrarySizeST := fun s => x <- genInbT s t;; ret (Some (leaf 0))|}. *)

(* TESTING : to see that our generator is being used? *)
Conjecture inb_test: forall t1 t2, inb t1 t2 -> t2 = (leaf 0).
(* QuickChick inb_test. *)

(* Evidently, QuickChick can automatically create our "smart" generator for inb *)
Derive ArbitrarySizedSuchThat for (fun t' => inb t t').

(* Print GenSizedSuchThatinb. *)

(* QUESTION --> What is the naming pattern that allows for use to know that GenSizedSuchThatinb is the right generator *)

(* Assume that when we do QuickChick now our new generator (from Dervie) will be used *)
(* Expects: *** Passed _ tests (0 discards) *)
(* QuickChick inb_trans. *)

(* QUESTION --> Similar to above, what happend is we don't define genInbT? Says it's needed but then how is the automatically
derived geneartor used? *)

(* A tree has at least one leaf *)
Theorem inb_ex : forall t : btree, exists x, inb (leaf x) t.
Proof. 
    intros t; elim t; simpl in |- *; auto.
    intros a; exists a; auto.
    intros b (a, H) b0 H0; exists a; auto.
Qed.

(* Show that inb_ex consequenct is decidable *)
Instance inb_exists_leaf (t : btree) : Dec (exists x, inb (leaf x) t).
Proof.
    constructor. dec_eq. induction t.
    - left. exists n. apply inleaf.
    - inversion IHt1.
        + left. inversion H. exists x. apply innodeL. apply H0.
        + inversion IHt2.
            * left. inversion H0. exists x. apply innodeR. apply H1.
            * right. intro. inversion H1. inversion H2. 
                ** destruct H. exists x. apply H5.
                ** destruct H0. exists x. apply H5.
Qed.

(* Check the existance theorem with QC (now that inb is decidable). *)
(* Expects: +++ Passed 10000 tests (0 discards) *)
(* QuickChick inb_ex. *)

(* Compute the number of nodes in a tree. *)
Fixpoint number_of_nodes (b : btree) : nat :=
    match b with
    | leaf _ => 0
    | node t1 t2 => S (number_of_nodes t1 + number_of_nodes t2)
    end.

(* Theorem showing if a tree is within another then the treee contained has less nodes *)
Theorem number_of_nodes_inb_le : 
forall t1 t2, inb t1 t2 -> number_of_nodes t1 <= number_of_nodes t2.
Proof.
    intros t1 t2 H; elim H; clear H t1 t2; simpl in |-*; auto.
    intros t t1 t2 H H0; apply Nat.le_trans with (1 := H0); auto with arith.
    intros t t1 t2 H H0; apply Nat.le_trans with (1 := H0); auto with arith.
Qed.

(* QUESTION --> get clarity on how this proof syntax works (using ";" and "elim") *)

(* Check theorem with QC *)
(* Expects: +++ Passed 10000 tests (0 discards) *)
(* QuickChick number_of_nodes_inb_le. *)

(* Belonging is anti-symmetric *)
Theorem inb_antisym : forall t1 t2 : btree, inb t1 t2 -> inb t2 t1 -> t1 = t2.
Proof.
    intros t1 t2 H; elim H; auto.
    intros t t0 t3 H0 H1 H2.
    absurd (number_of_nodes (node t0 t3) <= number_of_nodes t).
    (* QUESTION --> what does absurd mean? *)
    rewrite H1; simpl in |-*; auto with arith.
    apply inb_trans with (2 := H2); auto.
    apply number_of_nodes_inb_le; auto.
    intros t t0 t3 H0 H1 H2.
    absurd (number_of_nodes (node t0 t3) <= number_of_nodes t).
    rewrite H1; simpl in |-*; auto with arith.
    apply inb_trans with (2 := H2); auto.
    apply number_of_nodes_inb_le; auto.
Qed.

(* Expects: +++ Passed 10000 tests (0 discards) *)
(* QuickChick inb_antisym. *)

(* From Todd's file, includes the decidable proofs for polymorphic btrees (copy over later to test out lfind) *)

(* Gets a list of the leaves *)
Fixpoint all_leaves (t : btree) : list nat :=
    match t with 
    | leaf a => a :: []
    | node t1 t2 => all_leaves t1 ++ all_leaves t2
    end.

(* Theorem to say that a leaf in a tree is in the list of leaves *)
Theorem all_leaves_in : forall t a, inb (leaf a) t -> In a (all_leaves t).
Proof.
    intros t; elim t; simpl in |-*; auto.
    intros a a0 H; inversion H; auto.
    intros b H b0 H0 a H1; apply in_or_app; inversion H1; auto.
Qed.

(* Expects: +++ Passed 10000 tests (0 discards) *)
(* QuickChick all_leaves_in. *)

(* Other directions of all_leaves_in *)
Theorem all_leaves_inb : forall t a, In a (all_leaves t) -> inb (leaf a) t.
Proof.
    intros t; elim t; simpl in |-*; auto.
    intros a a0 [H| H]; [rewrite H | case H]; auto.
    intros b H b0 H0 a H1; case in_app_or with (1:=H1); auto.
Qed.

(* To make a generator for this causes exception: Error: Anomaly "Uncaught exception Failure("destIndRef")." *)
(* Derive ArbitrarySizedSuchThat for (fun x => In x l). *)

(* Expects: +++ Passed 10000 tests (0 discards) *)
(* QuickChick all_leaves_inb. *)

(* Define what it means to have all distinct leaves *)
Definition distinct_leaves (t:btree) : Prop :=
    forall t0 t1 t2 : btree, 
    inb (node t1 t2) t -> inb t0 t1 -> inb t0 t2 -> False.

(* Show False is decidable (because it is used above) *)
Instance false_dec : Dec(False).
Proof. constructor. dec_eq. Qed.

(* Theorem stating a tree of just one leaf has distinct leaves *)
Theorem distinct_leaves_leaf : forall a : nat, distinct_leaves (leaf a).
Proof.
    intros a; red in |-*.
    intros a0 t1 t2 H; inversion H.
Qed.
#[local] Hint Resolve distinct_leaves_leaf : core.

(* Expects: +++ Passed 10000 tests (0 discards) *)
(* QuickChick distinct_leaves_leaf. *)

(* Inversion theorem to go from distinct node to distinct subtrees *)
Theorem distinct_leaves_l : forall t1 t2 : btree,
distinct_leaves (node t1 t2) -> distinct_leaves t1.
Proof.
    intros t1 t2 H; red in |-*.
    intros a t0 t3 H0 H1 H2.
    apply (H a t0 t3); auto.
Qed.

Theorem distinct_leaves_r : forall t1 t2 : btree,
distinct_leaves (node t1 t2) -> distinct_leaves t2.
Proof.
    intros t1 t2 H; red in |-*.
    intros a t0 t3 H0 H1 H2.
    apply (H a t0 t3); auto.
Qed.

(* For QuickChick need to show decidable. *)
(* Instance distinct_leaves_dec (t : btree) : Dec (distinct_leaves t).     *)

(* QuickChick distinct_leaves_l. *)

(* Theorems copied from: coq-community/huffman/thoeries/AuxLib.v*)
(* Hard code the type nat in, would change for polymorphism *)

Theorem NoDup_app :
 forall l1 l2,
 NoDup l1 ->
 NoDup l2 -> (forall a : nat, In a l1 -> In a l2 -> False) -> NoDup (l1 ++ l2).
Proof.
    intros L1; elim L1; simpl in |- *; auto.
    intros a l H l2 H0 H1 H2; apply NoDup_cons; simpl in |- *; auto.
    red in |- *; intros H3; case in_app_or with (1 := H3); auto; intros H4.
    inversion H0; auto.
    apply H2 with a; auto.
    apply H; auto.
    apply NoDup_cons_iff with (1 := H0); auto.
    intros a0 H3 H4; apply (H2 a0); auto.
Qed.

Theorem NoDup_app_inv :
 forall l1 l2 (a : nat), NoDup (l1 ++ l2) -> In a l1 -> In a l2 -> False.
Proof.
    intros l1; elim l1; simpl in |- *; auto.
    intros a l H l2 a0 H0 [H1| H1] H2.
    inversion H0; auto.
    case H5; rewrite H1; auto with datatypes.
    apply (H l2 a0); auto.
    apply NoDup_cons_iff with (1 := H0); auto.
Qed.

Theorem NoDup_app_inv_l :
 forall (l1 l2 : list nat), NoDup (l1 ++ l2) -> NoDup l1.
    Proof.
    intros l1; elim l1; simpl in |- *; auto using NoDup_nil.
    intros a l H l2 H0; inversion H0; apply NoDup_cons; auto.
    contradict H3; auto with datatypes.
    apply H with l2; auto.
Qed.

Theorem NoDup_app_inv_r : forall l1 l2 : list nat, NoDup (l1 ++ l2) -> NoDup l2.
    Proof.
    intros l1; elim l1; simpl in |- *; auto.
    intros a l H l2 H0; inversion H0; auto.
Qed.

(* Using the list of a leaves, show that tree has all unique leaves *)
Theorem all_leaves_unique : forall t, NoDup (all_leaves t) -> distinct_leaves t.
Proof.
    intros t; elim t; simpl in |-*; auto.
    intros b H b0 H0 H1; red in |-*.
    intros t0 t1 t2 H2; inversion H2.
    intros H4 H7; case (inb_ex t0); intros a HH.
    apply NoDup_app_inv with (a := a) (1 := H1); auto; apply all_leaves_in;
    apply inb_trans with (1 := HH); auto.
    apply H; auto; try apply NoDup_app_inv_l with (1 := H1).
    apply H0; auto; try apply NoDup_app_inv_r with (1 := H1).
Qed.

(* Show that NoDup is deciable *)
Instance NoDup_dec (l : list nat) : Dec (NoDup l).
Proof.
    constructor. dec_eq. apply NoDup_dec. induction x. destruct y.
    left; auto.  right; auto. destruct y. right; auto. destruct (IHx y).
    rewrite e; left; auto.
    right; auto.
Defined.

(* QuickChick still won't work on all_leaves_unique because of nested quantifiers *)

(* Define all_leaves_unique with all quantifiers pulled out *)
Conjecture all_leaves_unique2: forall t t0 t1 t2 : btree,
NoDup (all_leaves t)-> inb (node t1 t2) t -> inb t0 t1 -> inb t0 t2 -> False.

(* Expects: +++ Passed 10000 tests (0 discards) *)
(* QuickChick all_leaves_unique2. *)

(* Reverse direction of all_leaves_unique *)
Theorem all_leaves_NoDup : forall t, distinct_leaves t -> NoDup (all_leaves t).
Proof.
    intros t; elim t; simpl in |-*; auto using NoDup_cons, NoDup_nil.
    intros b H b0 H0 H1; apply NoDup_app; auto.
    apply H; apply distinct_leaves_l with (1 := H1).
    apply H0; apply distinct_leaves_r with (1 := H1).
    intros a H2 H3; case (H1 (leaf a) b b0); auto.
    apply all_leaves_inb with (1 := H2).
    apply all_leaves_inb with (1 := H3).
Qed.

Lemma contrapositive : forall p q : Prop, (p -> q) -> (~q -> ~p).
Proof. intros. intro. apply H0. apply H. exact H1. Qed.

Lemma all_leaves_NoDup_contra : forall t, ~NoDup (all_leaves t) -> ~distinct_leaves t.
Proof.
    intros t. apply contrapositive. apply all_leaves_NoDup. Qed.

(* We can now show distinct_leaves is decidable *)
Instance distinct_leaves_dec (t : btree) : Dec (distinct_leaves t). 
Proof.
    constructor; dec_eq.
    case (NoDup_dec (all_leaves t)). dec_eq. intros. destruct dec as [Ht|Hf].
    left; apply all_leaves_unique; auto.
    right. apply all_leaves_NoDup_contra. apply Hf.
Qed.

(* Both Expect: +++ Passed 10000 tests (0 discards) *)
(* QuickChick distinct_leaves_l.
QuickChick distinct_leaves_r. *)
    
(* Computes the code associated with a binary tree *)
(* QUESTION --> how exactly is this representing code (what is bool list for) *)
Fixpoint compute_code (a : btree) : list (nat * list bool) :=
    match a with 
    | leaf b => (b,[]) :: []
    | node l1 l2 =>
        map (fun v : nat * list bool => 
        match v with | (a1, b1) => (a1, false :: b1) end)
        (compute_code l1)
        ++ 
        map (fun v : nat * list bool => 
        match v with | (a1, b1) => (a1, true :: b1) end)
        (compute_code l2)
    end.

(* Proves computed code is never empty. *)
Theorem length_compute_lt_0 : forall t,  0 < List.length (compute_code t).
Proof.
    intros t; elim t; simpl in |-*; auto with arith.
    intros b H b0 H0; rewrite app_length.
    replace 0 with (0 + 0); auto with arith.
    apply Nat.add_lt_mono.
    generalize H; elim (compute_code b); simpl in |-*; auto with arith.
    generalize H0; elim (compute_code b0); simpl in |-*; auto with arith.
Qed.
#[local] Hint Resolve length_compute_lt_0 : core.

(* Expects: +++ Passed 10000 tests (0 discards) *)
(* QuickChick length_compute_lt_0. *)

(* Checks if a code contains a component then there is corresponding leaf in tree *)
Theorem inCompute_inb : forall (t : btree) (a : nat) (l : list bool),
 In (a, l) (compute_code t) -> inb (leaf a) t.
Proof.
    intros t; elim t; simpl in |- *; auto.
    intros a a0 l [H1| H1]; try (case H1; fail).
    injection H1; intros H2 H3; rewrite H3; auto.
    intros h H h0 H0 a l H1.
    case in_app_or with (1 := H1); auto; intros H2.
    case in_map_inv with (1 := H2).
    intros (a1, l1) (Ha1, Hl1); auto.
    apply innodeL; apply (H a l1).
    injection Hl1; intros Hl2 Hl3; rewrite Hl3; auto.
    case in_map_inv with (1 := H2).
    intros (a1, l1) (Ha1, Hl1); auto.
    apply innodeR; apply (H0 a l1).
    injection Hl1; intros Hl2 Hl3; rewrite Hl3; auto.
Qed.

(* Expects: +++ Passed 10000 tests (0 discards) *)
(* QuickChick inCompute_inb. *)

(* This is the opposite direction of inCompute_inb, pointed out by Todd, need to show conseqent of the Theorem is deciable to use QuickChick (because of existential quantifier) *)
Theorem inb_compute_ex :
 forall a p, inb (leaf a) p -> exists l, In (a, l) (compute_code p).
Proof.
    intros a p; elim p; simpl in |- *; auto.
    intros a0 H; inversion H.
    exists []; auto.
    intros p0 H p1 H0 H1; inversion H1.
    case H; auto.
    intros x Hx; exists (false :: x).
    apply in_or_app; left; auto.
    change
    (In ((fun v => match v with
                    | (a1, b1) => (a1, false :: b1)
                    end) (a, x))
        (map (fun v => match v with
                        | (a1, b1) => (a1, false :: b1)
                        end) (compute_code p0))) in |- *;
    apply in_map; auto.
    case H0; auto.
    intros x Hx; exists (true :: x).
    apply in_or_app; right; auto.
    change
    (In ((fun v => match v with
                    | (a1, b1) => (a1, true :: b1)
                    end) (a, x))
        (map (fun v => match v with
                        | (a1, b1) => (a1, true :: b1)
                        end) (compute_code p1))) in |- *;
    apply in_map; auto.
Qed.

Lemma nat_eq_dec: forall (n1 n2 : nat), {n1=n2} + {~ n1=n2}.
Proof. 
    induction n1. destruct n2. left. auto. right. auto. destruct n2. right. auto. destruct (IHn1 n2).
    left. auto. right. auto.
Defined.

Instance exists_in_assoc_list_dec (a : nat) (code : list (nat * list bool)) : 
Dec (exists l, In (a, l) code).
Proof. 
    constructor. dec_eq. induction code.
    - right. intro. inversion H. inversion H0.
    - inversion IHcode.
    * left. inversion H. exists x. simpl. right. assumption.
    * destruct a0. assert ({n=a} + {~ n=a}). apply nat_eq_dec. inversion H0.
        + left. exists l. rewrite H1. simpl. left. reflexivity.
        + right. intro. inversion H2. inversion H3. inversion H4. rewrite H6 in H1. destruct H1. reflexivity. destruct H. exists x. assumption.
Defined.

(* Expects: +++ Passed 10000 tests (0 discards) *)
(* QuickChick inb_compute_ex. *)

(* Computed code is in the alphabet of its leaves *)
Theorem in_alphabet_compute_code : forall m t,
(forall a: nat, In a m -> inb (leaf a) t) -> in_alphabet m (compute_code t).
Proof.
    intros m; elim m; simpl in |-*; auto.
    intros a l H t H0; cut (inb (leaf a) t); auto; intros H1.
    case inb_compute_ex with (1 := H1).
    intros l1 Hl1; apply in_alphabet_cons with (ca := l1); auto.
Qed.

(* TODO : to use QuickChick need to show it is decidable (and in_alphabet is as well) *)

(* Two associations in the list with same prefix have same key *)
(* QUESTION --> what is prefix referring to??? *)
Theorem btree_unique_prefix1 : forall (t : btree) (a1 a2 : nat) (lb1 lb2 : list bool),
 In (a1, lb1) (compute_code t) ->
 In (a2, lb2) (compute_code t) -> is_prefix lb1 lb2 -> a1 = a2.
Proof.
    intros t; elim t; simpl in |- *.
    intros leaf1 a1 a2 lb1 lb2 H1 H2.
    case H1; intros H3; [ injection H3 | case H3 ].
    case H2; intros H4; [ injection H4 | case H4 ].
    intros H H0 H5 H6 H7; apply trans_equal with (2 := H0); auto.
    intros t1 Rec1 t2 Rec2 a1 a2 lb1 lb2 H1 H2.
    case (in_app_or _ _ _ H1); case (in_app_or _ _ _ H2); clear H1 H2;
    intros H2 H1 H3.
    generalize H1 H2; inversion H3.
    intros H4; case in_map_inv with (1 := H4).
    intros x; case x; intros x1 x2 (H5, H6); discriminate.
    intros H5 H6; apply Rec1 with (lb1 := l1) (lb2 := l2); auto.
    case in_map_inv with (1 := H5).
    intros x; case x.
    intros a l (H7, H8); injection H8.
    intros R1 R2 R3; rewrite R1; rewrite R3; auto.
    case in_map_inv with (1 := H6).
    intros x; case x.
    intros a l (H7, H8); injection H8.
    intros R1 R2 R3; rewrite R1; rewrite R3; auto.
    generalize H3.
    case in_map_inv with (1 := H1).
    intros x; case x; intros aa1 ll1 (H4, H5).
    case in_map_inv with (1 := H2).
    intros x1; case x1; intros aa2 ll2 (H6, H7).
    inversion H5; inversion H7; intros tH8; inversion tH8.
    generalize H3.
    case in_map_inv with (1 := H1).
    intros x; case x; intros aa1 ll1 (H4, H5).
    case in_map_inv with (1 := H2).
    intros x1; case x1; intros aa2 ll2 (H6, H7).
    inversion H5; inversion H7; intros tH8; inversion tH8.
    generalize H1 H2; inversion H3.
    intros H4; case in_map_inv with (1 := H4).
    intros x; case x; intros x1 x2 (H5, H6); discriminate.
    intros H5 H6; apply Rec2 with (lb1 := l1) (lb2 := l2); auto.
    case in_map_inv with (1 := H5).
    intros x; case x.
    intros a l (H7, H8); injection H8.
    intros R1 R2 R3; rewrite R1; rewrite R3; auto.
    case in_map_inv with (1 := H6).
    intros x; case x.
    intros a l (H7, H8); injection H8.
    intros R1 R2 R3; rewrite R1; rewrite R3; auto.
Qed.

(* Show that is_prefix is decidable *)
Instance is_prefix_dec (l1 l2 : list bool) : Dec (is_prefix l1 l2).
Proof.
    constructor; dec_eq. generalize dependent l2. induction l1.
    - intro. left. apply prefixNull.
    - intro. destruct l2. right. intro. inversion H.
    assert ({a=b} + {~ a=b}). apply Bool.bool_dec.
    inversion H. destruct (IHl1 l2).
    + left. rewrite H0. apply prefixCons. assumption.
    + right. intro. destruct n. inversion H1. assumption.
    + right. intro. inversion H1. rewrite H5 in H0. destruct H0. auto.
Qed.

(* Expects: +++ Passed 10000 tests (0 discards) *)
(* QuickChick btree_unique_prefix1. *)

(* TODD Presumably by proving that unique_key and unique_prefix are decidable, I can also use QC on the next two theorems. Skipping for now. *)
(** If a tree has distinc leaves its computed tree has unique keys *)
Theorem btree_unique_prefix2 :
forall t : btree, distinct_leaves t -> unique_key (compute_code t).
Proof.
    intros t; elim t; simpl in |- *; auto.
    intros b H b0 H0 H1.
    apply unique_key_app; auto.
    apply unique_key_map; auto.
    apply H; apply distinct_leaves_l with (1 := H1); auto.
    intros (a1, b1) (a2, b2); simpl in |- *; auto.
    apply unique_key_map; auto.
    apply H0; apply distinct_leaves_r with (1 := H1); auto.
    intros (a1, b1) (a2, b2); simpl in |- *; auto.
    intros a b1 c H2 H3.
    case in_map_inv with (1 := H2); auto; case in_map_inv with (1 := H3); auto.
    intros (a1, l1) (Ha1, Hl1) (a2, l2) (Ha2, Hl2).
    apply (H1 (leaf a) b b0); auto.
    injection Hl2; intros HH1 HH2; rewrite HH2.
    apply inCompute_inb with (1 := Ha2).
    injection Hl1; intros HH1 HH2; rewrite HH2.
    apply inCompute_inb with (1 := Ha1).
Qed.

(** If a tree has distinct leaves its code is prefix *)
Theorem btree_unique_prefix :
forall t : btree, distinct_leaves t -> unique_prefix (compute_code t).
Proof.
    intros t H1; split; try exact (btree_unique_prefix1 t);
    apply btree_unique_prefix2; auto.
Qed.