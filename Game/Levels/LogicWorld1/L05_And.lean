import Game.Metadata
import Mathlib.Data.Nat.Basic
import Mathlib.Tactic.Linarith

World "LogicWorld1"
Level 5

Title "Prove Conjunctions"

Introduction "This exercise requires you to combine all the tactics you
have learned so far in a single proof.
"

Statement(n:ℕ)(h : 6 ∣ n): 2 ∣ n ∧ 3 ∣ n := by
  sorry

Conclusion "Congratulation, you have mastered your first longer proof!"
