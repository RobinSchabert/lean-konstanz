import Game.Metadata

World "SetWorld2"
Level 9

Title "Union of Set Families"

Introduction "The union of a set family `F : Set (Set U)` is denoted
`⋃₀F` (write `\\U0` to obtain `⋃₀`). In this case, the statement `x ∈ ⋃₀F`
amounts to `∃ M ∈ F, x ∈ M`. In particular, the tactics `use` and `choose`
can be employed to prove or use element relations with family unions.
"


Statement (U: Type) (F G: Set (Set U)) (h: F ⊆ G) : ⋃₀F ⊆ ⋃₀G := by
  sorry

Conclusion "... impressive!"
