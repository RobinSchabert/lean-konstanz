import Game.Metadata
import Mathlib.Data.Int.Basic
import Mathlib.Tactic.Linarith

World "LogicWorld2"
Level 5

Title "Prove and Use Negation"

Introduction
"In the indirect proof of `¬(2 ∣ 3)` you eventually obtain a hypothesis
of the form `3 = 2*k`. One way to turn this into a contradiction uses two
intermediate statements: first derive `k≥2` with the `linarith` tactic
and then `2*k≥4`in a second step with the same tactic. With a suitable
rewrite you end up with a proof of `3 ≥ 4` which is noticed as an
obvious contradition.
"

Statement: ¬(2 ∣ 3) := by
  sorry

Conclusion "Congratulation, you can now handle negations!"
