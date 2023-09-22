(* Open Scope string_scope.
Fixpoint show_natural n :=
    match n with
    | Zero => "Zero"
    | Succ m => "Succ (" ++ show_natural m ++ ")"
    end.

Instance show_natural_instance : Show natural := {| show := show_natural |}. *)
From QuickChick Require Import QuickChick.

Inductive natural : Type := Succ : natural -> natural |  Zero : natural.


Derive Show for natural.

Fixpoint eqn (m n : natural) : bool :=
  match m , n with
  | Zero , Zero => true
  | Succ m' , Succ n' => eqn m' n'
  | _, _ => false
  end.

Fixpoint less (less_arg0 : natural) (less_arg1 : natural) : bool
:= match less_arg0, less_arg1 with
    | x, Zero => false
    | Zero, Succ x => true
    | Succ x, Succ y => less x y
    end.

Definition leq (m n : natural) : bool :=
  orb (eqn m n) (less m n).

Derive Arbitrary for natural.

Instance Dec_Eq_natural : Dec_Eq natural.
Proof. dec_eq. Qed.

Derive Show for lst.

Derive Arbitrary for lst.

Instance Dec_Eq_lst : Dec_Eq lst.
Proof. dec_eq. Qed.