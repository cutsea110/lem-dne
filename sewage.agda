module sewage where

open import Data.Empty
open import Function using (flip)
open import Level
open import Relation.Nullary

left : {ℓ : Level} → ({P : Set ℓ} →  ¬ ¬ P → P) → ({P Q : Set ℓ} → (¬ Q → ¬ P) → P → Q)
left ¬¬P→P {Q = Q} ¬Q→¬P P with ¬¬P→P {Q}
... | ¬¬Q→Q = ¬¬Q→Q (flip ¬Q→¬P P)

right : {ℓ : Level} → ({P Q : Set ℓ} → (¬ Q → ¬ P) → P → Q) → ({P : Set ℓ} →  ¬ ¬ P → P)
right [¬Q→¬P]→P→Q ¬¬P = {!!}

