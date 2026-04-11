import Game.Metadata

World "LogicWorld2"
Level 9

Title "Proof by Induction"

Introduction
"Often, the induction basis can be solved by a simple computation. If the
expression just involves arithmetic manipulations of numbers, the tactic
`norm_num` can solve the goal.
"

Statement(n:ℕ) : 3 ∣ (n^3 + 2*n) := by
  sorry

Conclusion "Congratulation - another proof by induction!"


NewTactic norm_num
