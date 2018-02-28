-- | Law of excluded middle equiv Double negate elimination
module lem-dne where

open import Data.Unit using (tt; ⊤)
open import Function using (flip; const; _∘_)
open import Relation.Nullary using (¬_)

dne⇒lem : ({P : Set₀} →  ¬ ¬ P → P) → ({P Q : Set₀} → (¬ Q → ¬ P) → P → Q)
dne⇒lem ¬¬P→P ¬Q→¬P P = ¬¬P→P (flip ¬Q→¬P P)
-- dne⇒lem ¬¬P→P {Q = Q} ¬Q→¬P P with ¬¬P→P {Q}
-- ... | ¬¬Q→Q = ¬¬Q→Q (flip ¬Q→¬P P)

lem⇒dne : ({P Q : Set₀} → (¬ Q → ¬ P) → P → Q) → ({P : Set₀} →  ¬ ¬ P → P)
lem⇒dne [¬Q→¬P]→P→Q ¬¬P = [¬Q→¬P]→P→Q (const ∘ ¬¬P) tt
-- lem⇒dne [¬Q→¬P]→P→Q {P} ¬¬P with [¬Q→¬P]→P→Q {P = ⊤} {Q = P}
-- ... | [¬P→¬⊤]→⊤→P = [¬P→¬⊤]→⊤→P (const ∘ ¬¬P) tt
