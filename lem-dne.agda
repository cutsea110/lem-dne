-- | Law of excluded middle equiv Double negate elimination
module lem-dne where

open import Data.Unit using (tt; ⊤)
open import Function using (_∘_) renaming (flip to ¬q→¬p⇒p→¬¬q; const to ⊥⇒¬⊤)
open import Relation.Nullary using (¬_)

dne⇒lem : ({P : Set₀} →  ¬ ¬ P → P) → ({P Q : Set₀} → (¬ Q → ¬ P) → P → Q)
dne⇒lem ¬¬P→P ¬Q→¬P P = ¬¬P→P (¬q→¬p⇒p→¬¬q ¬Q→¬P P)

lem⇒dne : ({P Q : Set₀} → (¬ Q → ¬ P) → P → Q) → ({P : Set₀} →  ¬ ¬ P → P)
lem⇒dne [¬Q→¬P]→P→Q ¬P→⊥ = [¬Q→¬P]→P→Q (⊥⇒¬⊤ ∘ ¬P→⊥) tt
