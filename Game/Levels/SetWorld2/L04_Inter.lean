import Game.Metadata

World "SetWorld2"
Level 4

Title "Set Intersection"

Introduction "In the following task, it is useful to prove a lemma
for the inclusion `C ∩ D ⊆ D ∩ C` and apply it to `A B` and `B A`
separately (after applying `Set.Subset.antisymm` to the goal).

To formulate a parameter dependent auxiliary result use
```
have L (C D: Set U): C ∩ D ⊆ D ∩ C := by
```
with a suitable proof. In the sequel, you can use `L A B`
if you need a proof of `A ∩ B ⊆ B ∩ A`.
"


Statement (U: Type) (A B : Set U) : A ∩ B = B ∩ A := by
  sorry

Conclusion "... well done!"
