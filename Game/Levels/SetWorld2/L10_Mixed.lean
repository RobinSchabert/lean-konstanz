import Game.Metadata

World "SetWorld2"
Level 10

Title "Operation Mixture"

Introduction "The final task combines some of the operations.
"


Statement (U: Type) (F : Set (Set U)) : (⋃₀F)ᶜ = ⋂₀{Mᶜ | M ∈ F} := by
  sorry

Conclusion "... master of sets!"
