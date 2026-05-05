import Game.Metadata

World "SetWorld2"
Level 2

Title "Set Complement"

Introduction "Use `ext x` and recall the `by_contra` tactic for one of the directions.

In case you want to explicitly switch between `x ∈ Aᶜ` and `x ∉ A`,
the theorem `Set.mem_compl_iff` will be helpful.
"

NewTheorem Set.mem_compl_iff

Statement (U: Type) (A: Set U): (Aᶜ)ᶜ = A := by
  sorry

Conclusion "... perfect!"
