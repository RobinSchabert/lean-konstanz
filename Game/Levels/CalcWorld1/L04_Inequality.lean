import Game.Metadata

World "CalcWorld1"
Level 4

Title "Inequality Chains"

Introduction "In this task, you will mix equality relations with strict
and non-strict inequality relations to prove the goal with a single chain.
The exercise is taken from the online book
[The Mechanics of Proof](https://hrmacbeth.github.io/math2001/) by Heather Macbeth.

Hint: the tactics `ring_nf`, `rel`, `linarith`, or `norm_num` may be useful here.
"

Statement {t : ℚ} (ht : t ≥ 10) : t ^ 2 - 3 * t - 17 ≥ 5 := by
  sorry


Conclusion "Well done!"
