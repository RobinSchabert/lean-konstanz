import Game.Metadata

World "SetWorld2"
Level 2

Title "Set Complement"

Introduction "Use `ext x` and recall the `by_contra` tactic for one of the directions.

In case you want to explicitly switch between `x ∈ Aᶜ` and `x ∉ A`,
the theorem `Set.mem_compl_iff` will be helpful.
"

TheoremTab "□ᶜ"

/-- The theorem `Set.mem_compl_iff` applied to a set `A` and an element `x`
of corresponding type gives you a proof of `x ∈ Aᶜ ↔ x ∉ A`. In particular,
the theorem can be used for rewriting.
-/
TheoremDoc Set.mem_compl_iff as "mem_compl_iff" in "□ᶜ"

Statement (U: Type) (A: Set U): (Aᶜ)ᶜ = A := by
  sorry

Conclusion "... perfect!"
