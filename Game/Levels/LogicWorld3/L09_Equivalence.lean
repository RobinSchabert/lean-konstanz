import Game.Metadata

World "LogicWorld3"
Level 9

Title "Use of Equivalence"

Introduction
"
To solve this task, you can use the equivalence shown in the previous level.
"

Statement(n:ℕ)(
  h: ∀ n:ℕ, ¬(2 ∣ n) ↔ ∃ k:ℕ, n = 2*k+1):
  (2 ∣ n)∧(3 ∣ n) → 6 ∣ n := by
  sorry

Conclusion "Congratulations - you can now work with all basic proposition types!"
