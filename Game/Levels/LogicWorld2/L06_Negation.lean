import Game.Metadata
import Mathlib.Data.Nat.Basic
import Mathlib.Tactic


World "LogicWorld2"
Level 6

Title "Indirect Proof"

Introduction
"
Remember that `a≠0` is an abbreviation of `¬(a=0)`.
"

Statement(a b:ℕ)(h: b≠0)(d: a ∣ b):  a ≠ 0 := by
  sorry

Conclusion "Expert of contradiction proofs!"
