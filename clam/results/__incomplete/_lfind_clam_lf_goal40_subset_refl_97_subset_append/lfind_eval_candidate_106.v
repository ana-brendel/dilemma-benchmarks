Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal40.

From lfind Require Import LFind.
Require Import Arith.

Lemma lfind_state   (n : natural) (x : lst) : @eq bool (lst_subset x (lfappend (Cons n Nil) x)) true.
Admitted.

From QuickChick Require Import QuickChick.
QCInclude "/home/anabrendel/lfind/benchmarks/clam/sources/_lfind_clam_lf_goal40_subset_refl_97_subset_append/".
QCInclude ".".
Extract Constant defNumTests => "50".
Derive Show for bool.

        Derive Arbitrary for bool.

        Instance Dec_Eq_bool : Dec_Eq bool.

        Proof. dec_eq. Qed.


Derive Show for lst.

        Derive Arbitrary for lst.

        Instance Dec_Eq_lst : Dec_Eq lst.

        Proof. dec_eq. Qed.




Derive Show for natural.

        Derive Arbitrary for natural.

        Instance Dec_Eq_natural : Dec_Eq natural.

        Proof. dec_eq. Qed.




Lemma candidate_106: forall (n : natural), @eq lst (Cons n Nil)   (if lst_mem n (if orb (eqb n n) false then Cons n Nil else Cons n (Cons n Nil)) then if lst_mem n (if orb (eqb n n) false then Cons n Nil else Cons n (Cons n Nil)) then if orb (eqb n n) false then Cons n Nil else Cons n (Cons n Nil) else Cons n (if orb (eqb n n) false then Cons n Nil else Cons n (Cons n Nil)) else Cons n (if lst_mem n (if orb (eqb n n) false then Cons n Nil else Cons n (Cons n Nil)) then if orb (eqb n n) false then Cons n Nil else Cons n (Cons n Nil) else Cons n (if orb (eqb n n) false then Cons n Nil else Cons n (Cons n Nil)))).
Admitted.
QuickChick candidate_106.