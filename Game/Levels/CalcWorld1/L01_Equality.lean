import Game.Metadata
-- import Batteries.Data.Rat.Basic

World "CalcWorld1"
Level 1

Title "Equality Chains"

Introduction "We begin with chains of equalities. In the first task, you
should find a necessary condition for the solvability of a small linear system.
"

Statement (x y : ℚ) (e1 : 3*x-2*y = 6) (e2 : 2*x-3*y = -1) : x = 4 ∧ y = 3 := by
  sorry


Conclusion "Congratulation, you have completed your first proof!"
