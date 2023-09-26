From QuickChick Require Import QuickChick.


Require Import Coq.Bool.Bool.
Open Scope string_scope.
Fixpoint show_natural n :=
    match n with
    | Zero => "Zero"
    | Succ m => "Succ (" ++ show_natural m ++ ")"
    end.

Instance show_natural_instance : Show natural := {| show := show_natural |}.  

Fixpoint less (less_arg0 : natural) (less_arg1 : natural) : bool
           := match less_arg0, less_arg1 with
              | x, Zero => false
              | Zero, Succ x => true
              | Succ x, Succ y => less x y
              end.

Fixpoint eqn (m n : natural) : bool :=
  match m , n with
  | Zero , Zero => true
  | Succ m' , Succ n' => eqn m' n'
  | _, _ => false
  end.

Definition leq (m n : natural) : bool :=
  orb (eqn m n) (less m n).

Lemma natural_leq_refl : forall (a : natural), leq a a = true.
Proof. intros. unfold leq. replace (eqn a a) with true.
    - auto.
    - induction a. auto. auto.
Qed.

Lemma natural_eq : forall (a c : natural), eqn a c = true -> a = c. 
Proof. induction a.
    - destruct c.
    -- intros. inversion H. apply f_equal. apply IHa. apply H1.
    -- simpl. intros. discriminate H.
    - destruct c. simpl. intros. discriminate H. simpl. auto.
Qed.  

Lemma leq_S_n : forall (a b : natural), leq a b = leq (Succ a) (Succ b).
Proof.  intros. destruct leq. auto. auto. Qed.

Lemma less_S_n : forall (a b : natural), less a b = less (Succ a) (Succ b).
Proof.  intros. destruct less. auto. auto. Qed.

Lemma less_Succ : forall (a : natural), less a (Succ a) = true.
Proof. intros. induction a. simpl. apply IHa. auto.
Qed.

Lemma less_Zero : forall (a : natural), less a Zero = false.
Proof. intros. destruct a. auto. auto. Qed.

Lemma leq_strengthen : forall (a b : natural), less b (Succ a) = true -> leq b a = true.
Proof.
    induction a.
    - intros. destruct (leq b (Succ a)) eqn:E.
    -- auto. 
    -- destruct (eqn b (Succ a)) eqn:F.
    + unfold leq in E. rewrite F in E. simpl in E. discriminate E.
    + destruct b. 
    ++ rewrite <- E. rewrite <- leq_S_n. apply IHa. rewrite less_S_n. auto.
    ++ rewrite <- E. unfold leq. apply orb_true_iff. right. auto.
    - intros. destruct b. 
    + rewrite <- less_S_n in H. rewrite less_Zero in H. discriminate H.
    + unfold leq. simpl. auto. 
Qed.
    
Lemma less_strengthen : forall (a b : natural), less (Succ a) b = true -> less a b = true.
Proof.
    induction a.
    - intros. destruct (less (Succ a) b) eqn:E.
    -- auto.
    -- rewrite <- E. destruct b.
    + rewrite <- less_S_n. apply IHa. rewrite less_S_n. auto.
    + simpl in H. discriminate H.
    - intros. destruct b. auto. simpl in H. discriminate H.
Qed.

Lemma natural_leq_trans : forall (a b c : natural), leq b a = true -> leq a c = true -> leq b c = true.
Proof.
    induction a.
    - intros. unfold leq in H. apply orb_true_iff in H. destruct H.
    -- apply natural_eq in H. rewrite H. apply H0.
    -- apply IHa.
    --- apply leq_strengthen in H. auto.
    --- unfold leq in H0. apply orb_true_iff in H0. destruct H0.
    + apply natural_eq in H0. rewrite <- H0. unfold leq. apply orb_true_iff.
    right. apply less_Succ.
    + unfold leq. apply orb_true_iff. right. apply less_strengthen. auto.
    - intros. unfold leq in H. apply orb_true_iff in H. destruct H.
    -- apply natural_eq in H. rewrite H. auto.
    -- rewrite less_Zero in H. discriminate H.
Qed.

Lemma less_not_refl : forall (b : natural), less b b = false.
Proof. induction b. auto. auto. Qed.

Lemma less_not_equal : forall (a b : natural), less a b = true -> a <> b.
Proof.
    intros. unfold not. intros. rewrite H0 in H. rewrite less_not_refl in H. discriminate H.
Qed.

Lemma natural_leq_antisym : forall (a b : natural), is_true (leq a b && leq b a) -> a = b.
Proof.
    intros. unfold is_true in H. apply andb_true_iff in H. destruct H. 
    unfold leq in H; unfold leq in H0. destruct (eqn a b) eqn:E.
    - apply natural_eq. auto.
    - destruct (eqn b a) eqn:F. 
    -- symmetry. apply natural_eq. auto.
    -- simpl in H; simpl in H0. generalize dependent b. induction a.
    + intros. destruct b.
    ++ apply f_equal. apply IHa. 
    simpl in E. auto. rewrite <- less_S_n in H. auto. 
    simpl in F. auto. rewrite <- less_S_n in H0. auto.
    ++ rewrite less_Zero in H. discriminate H.
    +  intros. rewrite less_Zero in H0. discriminate H0.
Qed.
    
Instance ord_natural_instance : OrdType natural := 
{
    leq := leq;
    refl := natural_leq_refl;
    trans := natural_leq_trans;
    antisym := natural_leq_antisym
}. 

Derive Arbitrary for natural.

Instance Dec_Eq_natural : Dec_Eq natural.
Proof. dec_eq. Qed. 

Derive Show for lst.

Derive Arbitrary for lst.

Instance Dec_Eq_lst : Dec_Eq lst.
Proof. dec_eq. Qed.