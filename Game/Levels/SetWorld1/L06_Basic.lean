import Game.Metadata

World "SetWorld1"
Level 6

Title "Proving Set Equalities"

Introduction "If your goal is a set equality `A = B`, you can transform it
into an equivalence `x ∈ A ↔ x ∈ B` with the tactic `ext x`.

Alternatively, you can try `apply Set.Subset.antisymm` which
translates the goal into the subgoals `A ⊆ B` and `B ⊆ A`.
"

Statement: {n:ℕ | n>1 ∧ n<4} = {n:ℕ | n<4 ∧ n>1} := by
  sorry

Conclusion "... well done!"

NewTactic trivial
