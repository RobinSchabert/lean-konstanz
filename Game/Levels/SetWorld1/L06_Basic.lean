import Game.Metadata

World "SetWorld1"
Level 6

Title "Proving Set Equalities"

Introduction "If your goal is a set equality `A = B`, you can transform it
into an equivalence `x ∈ A ↔ x ∈ B` with the tactic `ext x`.

Alternatively, you can try `apply Set.Subset.antisymm` which
translates the goal into the subgoals `A ⊆ B` and `B ⊆ A`.
"

TheoremTab "="

/-- The theorem `Set.Subset.antisymm` applied to a goal of type set equality `A = B`
transforms it to two goals  `A ⊆ B` and `B ⊆ A`.
-/
TheoremDoc Set.Subset.antisymm as "Subset.antisymm" in "="

Statement: {n:ℕ | n>1 ∧ n<4} = {n:ℕ | n<4 ∧ n>1} := by
  sorry

Conclusion "... well done!"

NewTactic ext
