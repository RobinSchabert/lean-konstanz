import Game.Metadata
import Mathlib.Data.Nat.Basic
import Mathlib.Tactic


World "LogicWorld3"
Level 2

Title "Prove and Use Disjunctions"

Introduction
"The next task is to prove that each natural number is either odd
or even. Good luck!
"

Statement(n:ℕ) : ∃ k:ℕ, n=2*k ∨ n=2*k+1 := by
  sorry

Conclusion "Well done!"
