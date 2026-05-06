import Game.Metadata

World "SetWorld1"
Level 9

Title "Dealing with Enumeration Sets"

Introduction "Element relations with enumeration sets like `3 ∈ {1, 2, 3, 5}`
which can be decided algorithmically can be proved with the `decide` tactic.

If the set is declared as a `Finset`, even subset or equality relations can be
proved with a simple application of `decide`
"

Statement: {3, 2, 5, 1} = ({1, 2, 3, 5} : (Finset ℕ)) := by
  sorry

Conclusion "... that was easy again."

NewTactic decide
