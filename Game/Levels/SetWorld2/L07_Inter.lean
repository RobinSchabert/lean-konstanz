import Game.Metadata

World "SetWorld2"
Level 7

Title "Intersection of Set Families"

Introduction "A family `F` of sets whose elements are of type `U` has
type `Set (Set U)`. Its intersection is denoted `⋂₀F` (write `\\I0`
to obtain `⋂₀`). In this case, the statement `x ∈ ⋂₀F` is equivalent
to `∀ M ∈ F, x ∈ M`. In particular, the tactics `intro` and `specialize`
can be used to prove or use element relations with family intersections.
"


Statement (U: Type) {A : Set U}(F : Set (Set U)) (h: A ∈ F) : ⋂₀F ⊆ A := by
  sorry

Conclusion "... perfect!"
