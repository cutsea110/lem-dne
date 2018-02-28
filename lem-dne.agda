-- | Law of excluded middle equiv Double negate elimination
module lem-dne where

open import Data.Empty
open import Data.Unit
open import Function using (flip; const; _∘_)
open import Level
open import Relation.Nullary

left : ({P : Set₀} →  ¬ ¬ P → P) → ({P Q : Set₀} → (¬ Q → ¬ P) → P → Q)
left ¬¬P→P ¬Q→¬P P = ¬¬P→P (flip ¬Q→¬P P)

right : ({P Q : Set₀} → (¬ Q → ¬ P) → P → Q) → ({P : Set₀} →  ¬ ¬ P → P)
right [¬Q→¬P]→P→Q ¬¬P = [¬Q→¬P]→P→Q (const ∘ ¬¬P) tt
