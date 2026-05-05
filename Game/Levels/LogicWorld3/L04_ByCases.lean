import Game.Metadata

World "LogicWorld3"
Level 4

Title "Tertium non datur"

Introduction
"
Prove this task by induction over `c`. Note that, in the induction step,
the induction hypothesis requires you to split the argument into cases of positive
and non-positive induction parameters.

From the next level onward, you can access this result under the name
`Nat.mul_lt_mul_of_pos_left`.
"

NewTheorem Nat.zero_lt_of_ne_zero

Statement(a b c:ℕ)(h1: a<b)(h2: c>0): c*a<c*b := by
  sorry

Conclusion "You have made it!"
