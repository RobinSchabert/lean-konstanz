import Game.Metadata
import Mathlib.Data.Nat.Basic
import Mathlib.Tactic.Linarith

World "LogicWorld1"
Level 2

Title "Prove Existence"

Introduction "The classical abbreviation of the existence statement
encountered in the previous level is the divisibility statement `2 ∣ 6`.
In the following we will use this abbreviation which is predefined in Lean
as `a ∣ b :⇔ ∃ k:ℕ, b = a*k`. In Lean, the divisibilty statement can be treated
exactly like the equivalent existence statement.

Once you have used a suitable witness, your proof goal changes to an
equality statement which follows by elementary calculations.
To prove simple equalities like this involving addition and multiplications
of variables with numbers you can use the `linarith` tactic.
"

Statement (a:ℕ): a ∣ a := by
  sorry

Conclusion "Congratulation, you have completed the second level!"

/- Use these commands to add items to the game's inventory. -/
/--
If your goal is an (in)equality statement involving
simple linear arithmetic operations,
the `linarith` tactic may help to prove it using already
available (in)equalities among your hypotheses.
-/
TacticDoc linarith
NewTactic linarith
