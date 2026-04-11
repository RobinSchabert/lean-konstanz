import Game.Metadata


World "LogicWorld2"
Level 6

Title "Indirect Proof"

Introduction
"
Recall that `a≠0` is an abbreviation of `¬(a=0)`.
"

Statement(a b:ℕ)(h: b≠0)(d: a ∣ b):  a ≠ 0 := by
  sorry

Conclusion "Expert of contradiction proofs!"
