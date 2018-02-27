module sewage where

open import Level
open import Relation.Nullary

left : {ℓ : Level} → ({P : Set ℓ} →  ¬ ¬ P → P) → ({P Q : Set ℓ} → (¬ P → ¬ Q) → (P → Q))
left = {!!}

right : {ℓ : Level} → ({P Q : Set ℓ} → (¬ P → ¬ Q) → (P → Q)) → ({P : Set ℓ} →  ¬ ¬ P → P)
right = {!!}
