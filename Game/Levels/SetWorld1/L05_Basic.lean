import Game.Metadata

World "SetWorld1"
Level 5

Title "Proving and Using Subset Relations"

Introduction "Proving the transitivity of the subset relation is a typical example
where you need to prove and use subset relations.
"

Statement (U: Type) (A B C: Set U) : A ⊆ B ∧ B ⊆ C → A ⊆ C := by
  sorry

Conclusion "... good job!"
