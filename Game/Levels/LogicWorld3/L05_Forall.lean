import Game.Metadata

World "LogicWorld3"
Level 5

Title "Prove Forall Statements"

Introduction
"To prove a statement of type `∀ x y:X, P`, use `intro a b` to introduce
general objects named `a` and `b` of type `X`. Your goal changes to `P`
with the parameters `x` and `y` replaced by your chosen names `a` and `b`.

The idea in this proof is to split the situation in the easy case `a=b`
and the more difficult case `a<b` which has been covered in the previous step.

If a hypothesis `h1: a<b` is available you can prove `c*a < c*b`
by the tactic `apply Nat.mul_lt_mul_of_pos_left h1 h`.
"

NewTheorem Nat.mul_lt_mul_of_pos_left


Statement(c:ℕ)(h: c>0): ∀ a b:ℕ, a ≤ b → c*a ≤ c*b := by
  sorry

Conclusion "Congratulation - you proved a forall statement!"
