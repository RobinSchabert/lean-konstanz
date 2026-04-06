import Game.Metadata
import Mathlib.Data.Int.Basic
import Mathlib.Tactic.Linarith


World "LogicWorld2"
Level 1

Title "Prove Implication"

Introduction "We begin with the treatment of **implication** statements
which have the general structure `P → Q`. The arrow pointing to the right is
obtained by typing `\\to` or `\\r`.

With the tactic `intro h`, a hypothesis of type `P` is added to your
list of assets and the goal flips from type `P → Q` to type `Q`.
In other words, you now have to give a proof of `Q` under the assumption
that a proof `h` of `P` is given.
"

Statement(n:ℕ): 6 ∣ n → 2 ∣ n := by
  sorry

Conclusion "Congratulation, you have proved your first implication!"

/--
If your goal has type `P → Q`, the tactic `intro h` adds a hypothesis `h` of
type `P` to your assets and flips your goal to type `Q`.

For goals of type `∀ x:X, P`, using `intro a` introduces
an object `a` of type `X`. Your goal changes to `P`
with the parameter `x` replaced by your chosen name `a`.
-/
TacticDoc intro
NewTactic intro
