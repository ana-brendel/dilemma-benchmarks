From QuickChick Require Import QuickChick.


Fixpoint add (n m:nat) : nat :=
  match n with
  | O => m
  | S p => S (add p m)
  end.

Inductive exp : Type :=
| Num : nat -> exp
| Plus : exp -> exp -> exp.


Inductive listnat : Type :=
  | Natnil : listnat
  | Natcons : nat -> listnat -> listnat.

Fixpoint evalExp (e : exp) : nat :=
  match e with
  | Num n => n
  | Plus e1 e2 => 
    add (evalExp e1) (evalExp e2)
  end
.

Inductive instr : Type :=
| Push : nat -> instr
| Add : instr.


Inductive listinstr : Type :=
| Instrnil : listinstr
| Instrcons : instr -> listinstr -> listinstr.

Fixpoint instrapp (l : listinstr) (m: listinstr): listinstr :=
  match l with
    | Instrnil => m
    | Instrcons a l1 => Instrcons a (instrapp l1 m)
  end.

Definition execI 
  (i : instr) (s : listnat) : listnat :=
  match i with
  | Push n => (Natcons n s)
  | Add =>
    match s with
    | (Natcons n1 (Natcons n2 rest)) => Natcons (add n1 n2) rest
    | _ => Natnil
    end
  end.

Fixpoint execIs 
  (l : listinstr) (s : listnat) : listnat :=
  match l with
  | Instrnil => s
  | Instrcons i is => execIs is (execI i s)
  end.

Fixpoint compile (e : exp) : listinstr :=
  match e with
  | Num n => Instrcons (Push n) Instrnil
  | Plus e1 e2 => 
  (instrapp (compile e2) (instrapp (compile e1) (Instrcons Add Instrnil)))
  end.
Derive Show for listnat.

Derive Arbitrary for listnat.

Instance Dec_Eq_listnat : Dec_Eq listnat.

Proof. dec_eq. Qed.
Derive Show for exp.

Derive Arbitrary for exp.

Instance Dec_Eq_exp : Dec_Eq exp.

Proof. dec_eq. Qed.
Derive Show for instr.

Derive Arbitrary for instr.

Instance Dec_Eq_instr : Dec_Eq instr.

Proof. dec_eq. Qed.

Derive Show for listinstr.

Derive Arbitrary for listinstr.

Instance Dec_Eq_listinstr : Dec_Eq listinstr.

Proof. dec_eq. Qed.

(* Infix "++" := instrapp (right associativity, at level 60).
Infix "::" := Instrcons (right associativity, at level 60).

Lemma instrapp_assc: forall l1 l2 l3,
l1 ++ l2 ++ l3 = (l1 ++ l2) ++ l3.
Proof.
  intros.
  induction l1.
  - simpl. reflexivity.
  - simpl. rewrite IHl1. reflexivity.
Qed. *)


Lemma correct_compilation_strong:
forall  (l : listinstr) (e : exp) (s: listnat), (@eq listnat (execIs (instrapp (compile e) l) s) (  execIs l (Natcons (evalExp e) s))).
Proof.
induction e.
- intros. reflexivity.
- intros. simpl.
Admitted.
  
Theorem app_nil_end: forall l, l = instrapp l Instrnil.
Admitted.

Theorem correct_compilation:
forall e,
(execIs (compile e) Natnil) =
(Natcons (evalExp e) Natnil).
Proof.
  intros.
  induction e.
  - simpl. reflexivity.
  - simpl. rewrite correct_compilation_strong.
Admitted.