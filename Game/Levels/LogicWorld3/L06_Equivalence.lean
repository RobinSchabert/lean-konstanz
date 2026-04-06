import Game.Metadata
import Mathlib.Data.Nat.Basic
import Mathlib.Tactic


World "LogicWorld3"
Level 6

Title "Use Forall Statement to Prove Equivalence"

Introduction
"
Since the equivalence statement `P ↔ Q` is an abbrevition of `(P → Q)∧(Q → P)`
it can be proved with the `constructor` tactic followed by the proof of two
implications.

In this task you can use the theorem `Nat.mul_lt_mul_of_pos_left` in a direct proof
and the result of the previous step as hypothesis `P` in an indirect argument.

To apply the forall hypothesis `P` use `apply P u v le` if `u` and `v`
are natural numbers,`le` is of type `u ≤ v` and your goal is `c*u ≤ c*v`.

From the next level onward, you can access this result under the name
`Nat.mul_lt_mul_left`.
"

Statement(a b c:ℕ)(h: c>0)(P: ∀ m n:ℕ, m ≤ n → c*m ≤ c*n): c*a < c*b ↔ a < b := by
  sorry

Conclusion "Success - you applied a forall statement and mastered an equivalence proof!"
