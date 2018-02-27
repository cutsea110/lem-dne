open import Relation.Nullary
open import Level

left : {ℓ : Level} → ({P : Set ℓ} →  ¬ ¬ P → P) → ({P Q : Set ℓ} → (¬ P → ¬ Q) → (P → Q))
left = {!!}

right : {ℓ : Level} → ({P Q : Set ℓ} → (¬ P → ¬ Q) → (P → Q)) → ({P : Set ℓ} →  ¬ ¬ P → P)
right = {!!}
