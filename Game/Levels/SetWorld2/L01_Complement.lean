import Game.Metadata

World "SetWorld2"
Level 1

Title "Set Complement"

Introduction "The complement of a set `A` is denoted `Aᶜ` (write `A\\^c`).
Lean reduces the element statement `x ∈ Aᶜ` to the implication `x ∈ A → False`
which amounts to the negation `¬(x ∈ A)`. (To see that, just try the tactic
`reduce` once your goal has been transformed to `x ∈ Aᶜ`).

In particular, the usual methods applying to negation statements can be used
to handle `x ∈ Aᶜ`.
"
Statement (U: Type) (A B: Set U)(h: A ⊆ B): Bᶜ ⊆ Aᶜ := by
  sorry

Conclusion "... you have made it!"

NewTactic  reduce
