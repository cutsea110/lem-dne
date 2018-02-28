module sewage where

open import Data.Empty
open import Level
open import Relation.Nullary

left : {ℓ : Level} → ({P : Set ℓ} →  ¬ ¬ P → P) → ({P Q : Set ℓ} → (¬ Q → ¬ P) → P → Q)
left ¬¬P→P ¬Q→¬P P = {!!}

right : {ℓ : Level} → ({P Q : Set ℓ} → (¬ Q → ¬ P) → P → Q) → ({P : Set ℓ} →  ¬ ¬ P → P)
right [¬Q→¬P]→P→Q ¬¬P = {!!}
