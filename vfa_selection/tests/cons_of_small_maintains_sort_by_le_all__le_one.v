
Lemma cons_of_small_maintains_sort: forall bl y n,
  n = length bl -> y <=* bl -> sorted (selsort bl n) -> sorted (y :: selsort bl n).
Proof.
  intros. 
  induction (selsort bl n) eqn:K.
  - apply sorted_1.
  - apply sorted_cons.
