import Game.Metadata
import Mathlib.Data.Nat.Basic
import Mathlib.Tactic


World "LogicWorld3"
Level 8

Title "Prove and Use Forall Statements"

Introduction
"
The aim of this task is to combine two previous results into
a single equivalence.
"

Statement(
  h1: ∀ n:ℕ, (∃ k:ℕ, n = 2*k+1) → ¬(2∣n) )(
  h2: ∀ n:ℕ, ∃ k:ℕ, n=2*k ∨ n = 2*k+1 ):
  ∀ n:ℕ, ¬(2 ∣ n) ↔ ∃ k:ℕ, n = 2*k+1 := by
  sorry

Conclusion "Well done!"
