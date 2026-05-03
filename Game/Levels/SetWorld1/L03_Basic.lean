import Game.Metadata
import Game.Levels.SetWorld1.L01_Basic

World "SetWorld1"
Level 3

Title "Proving Element Relations"

Introduction "Next we prove the element relation `3 ∈ B` by first
reducing it to an inequality which can then be closed with `norm_num`.

Alternatively, you can use `norm_num[B]` in one step.
"


Statement: 3 ∈ B := by
  sorry

Conclusion "... another simple one."
