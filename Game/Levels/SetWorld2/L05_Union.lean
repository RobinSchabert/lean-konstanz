import Game.Metadata

World "SetWorld2"
Level 5

Title "Set Union"

Introduction "Internally, the hypotheses `h : x ∈ A ∪ B` and
`h' : (x ∈ A) ∨ (x ∈ B)` are reduced to the same conjunction.
In particular, we can use `left` and `right` to prove the membership relation
and assess the left and right subexpressions with `obtain`.
"


Statement (U: Type) (A : Set U) : A ∪ A = A := by
  sorry

Conclusion "... well done!"
