Lemma p10_left :
  (forall A, ~~A -> A) -> (forall A B, (~B -> ~A) -> (A -> B)).
Proof.
intros.
apply H.
intro.
elim (H0 H2).
apply H1.
Qed.

Lemma p10_right :
  (forall A B, (~B -> ~A) -> (A -> B)) -> (forall A, ~~A -> A).
Proof.
intros.
apply (H True A).
intro.
elim H0.
apply H1.
apply I.
Qed.
