import Game.Metadata

World "SetWorld2"
Level 3

Title "Set Intersection"

Introduction "Internally, the hypotheses `h : x ∈ A ∩ B` and
`h' : (x ∈ A) ∧ (x ∈ B)` are reduced to the same conjunction.
In particular, we can use constructor to prove the membership relation
and assess the left and right subexpressions with `h.left` and `h.right`.
"


Statement (U: Type) (A: Set U): A ∩ A = A := by
  sorry

Conclusion "... good job!"
