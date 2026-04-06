import Game.Metadata
import Mathlib.Data.Nat.Basic
import Mathlib.Tactic


World "LogicWorld3"
Level 3

Title "Tertium non datur"

Introduction
"Tertium non datur is a rule in classical logic which states that every proposition `P`
is either true or false so that the disjunction `P ∨ ¬P` is aways valid. To support
the use of this special type of disjunction, the `by_cases` tactic is available.

Using `by_cases h: P` you can finish your goal if you are able to prove it under the hypotheses
`h: P` and `h: ¬P` separately.

While `linarith` cannot deduce `0<a` from `a≠0` directly for natural `a`, it
is successful in finding `a=0` from `¬(0<a)`. So `by_cases` will help you with
the present task.

Many of these basic theorems are available in the Mathlib library. This particular
example is available under the name `Nat.zero_lt_of_ne_zero`. From the next level onward,
you can access this result by typing `apply Nat.zero_lt_of_ne_zero h` if `h` is the
name of the nonzero-hypothesis.
"

Statement(a :ℕ)(h: a≠0): 0<a := by
  sorry

Conclusion "You have made it!"

/--
You can close the current goal if you can
prove it under the hypotheses `P` and `¬P` separately. Use the tactic
`by_cases h: P`.
-/
TacticDoc by_cases
NewTactic by_cases
