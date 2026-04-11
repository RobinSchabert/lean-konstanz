import Game.Metadata

World "LogicWorld1"
Level 1

Title "Prove Existence"

Introduction "We begin with the treatment of **existence** statements.
If you have a witness for the existence goal in mind, you can specify
it with the `use` tactic.

In the current task just type `use ..` with an appropriate number
instead of `..` which satisfies the condition on `k` in the existence
statement.
"

Statement: ∃ k:ℕ, 6 = 2*k := by
  sorry

Conclusion "Congratulation, you have completed your first proof!"

NewTactic use
