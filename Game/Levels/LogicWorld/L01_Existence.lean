import Game.Metadata
import Mathlib.Data.Int.Basic
import Mathlib.Tactic.Linarith

World "LogicWorld"
Level 1

Title "Prove Existence Statements."

Introduction "We begin with the treatment of **existence** statements.
If you have a witness for the existence goal in mind, you can specify
it with the `use` tactic.
"

Statement: ∃ k:ℕ, 6 = 2*k := by
  sorry

Conclusion "Congratulation, you have completed your first proof!"

/- Use these commands to add items to the game's inventory. -/
/--
If your goal is an existence statement, you can introduce a witness
`w` with `use w`. Several witnesses `w,u` for iterated existence statements
can be provided as `use w,u`.
-/
TacticDoc use
NewTactic use
