import Game.Metadata
import Mathlib.Data.Nat.Basic
import Mathlib.Tactic


World "LogicWorld3"
Level 3

Title "Prove and Use Forall Statements"

Introduction
"To prove a statement of type `∀ x:X, P`, use `intro a` to introduce
a general object named `a` of type `X`. Your goal changes to `P`
with the parameter `x` replaced by your chosen name `a`.

A hypothesis `h: ∀ x:X, P` can be _applied_ to some object `b` of type `X`
to close a goal of type `P` with `b` in place of `x`
using the tactic `apply h b`.
"
def odd(n:ℕ) := ¬(2 ∣ n)
Statement(h: ∀ n:ℕ,∃ k:ℕ, n=2*k ∨ n = 2*k+1): ∀ n:ℕ, odd n → ∃ k:ℕ, n = 2*k+1 := by
  sorry

Conclusion "Congratulation - you can master forall statements!"

/--
If your goal has type `P → Q`, the tactic `intro h` adds a hypothesis `h` of
type `P` to your assets and flips your goal to type `Q`.

For goals of type `∀ x:X, P`, using `intro a` introduces
an object `a` of type `X`. Your goal changes to `P`
with the parameter `x` replaced by your chosen name `a`.
-/
TacticDoc intro
/- Use these commands to add items to the game's inventory. -/
/--
With `apply h hP` you prove a goal of type `Q` if `h` is of type `P → Q`
and `hP` is of type `P`.

If `h` is of type `∀ x:X, P` and `b` is of type `X` then `apply h b` closes a goal of type
`P` with `b` in place of `x`.
-/
TacticDoc apply
