import Game.Metadata
import Mathlib.Data.Nat.Basic
import Mathlib.Tactic.Linarith

World "LogicWorld"
Level 3

Title "Use Existence Statements."

Introduction "You can use the `choose` tactic to take advantage of an
existence statement among your hypotheses.

If the hypothesis is `h: 2 ∣ 6` then `choose k hk using h` will give
you an object specied in the existence statement with name `k` and
a new hypothesis `hk` about its property.

Don't worry if the original hypothesis `h` will disappear in this process.
We will learn techniques how to preserve it for a later use.
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
