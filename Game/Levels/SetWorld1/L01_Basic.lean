import Game.Metadata

World "SetWorld1"
Level 1

Title "Unfolding Set Definitions"

Introduction "In the first step, we check that the sugar coated form `B` has
the same meaning as the function form `A`. In fact, we can prove
`A = B` simply by applying the tactic `rfl` which tries to reduce both sides
of the goal to an identical expression by resolving definitions and then
conclude by the reflexivity property of equality. The tactic can also be applied
to other (registered) reflexive relations.

In order to see a little bit more of what's going on, you can apply the tactic
`unfold A B` before using `rfl`. With this command, the names `A` and `B` are
replaced by the expressions they abbreviate.
"
def A : Set ℕ := fun n ↦ n > 2
def B := {n : ℕ | n > 2}
Statement: A = B := by
  sorry

Conclusion "... that wasn't too hard, though."

NewTactic  rfl unfold
