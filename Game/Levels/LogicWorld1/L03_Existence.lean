import Game.Metadata
import Mathlib.Data.Nat.Basic
import Mathlib.Tactic.Linarith

World "LogicWorld1"
Level 3

Title "Use Existence"

Introduction "With the `choose` tactic you can take advantage of an
existence statement among your hypotheses.

If the hypothesis is `h: 2 ∣ 6` then `choose m hm using h` will give
you an object named `m` and
a new hypothesis `hm` which assures the property for `m` as given in
the existence statement.

Don't worry if the original hypothesis `h` disappears in this process.
We will learn techniques how to preserve hypotheses for later use in
the same proof.
"

Statement(n:ℕ)(h: 6 ∣ n): 2 ∣ n := by
  sorry

Conclusion "Congratulation, you have completed the next level!"

/- Use these commands to add items to the game's inventory. -/
/--
To benefit from a hypothesis `h` of type `∃ x:X, P` you can use the tactic
`choose u hu using h`.
-/
TacticDoc choose
NewTactic choose
