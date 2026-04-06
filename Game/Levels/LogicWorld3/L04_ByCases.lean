import Game.Metadata
import Mathlib.Data.Nat.Basic
import Mathlib.Tactic


World "LogicWorld3"
Level 4

Title "Tertium non datur"

Introduction
"
Prove this task by induction over `c`. Note that, in the induction step,
the induction hypothesis to split the argument into the case of positive and non-positive
induction parameter.

From the next level onward, you can access this result under the name
`Nat.mul_lt_mul_of_pos_left`.
"

/--
Given `h: a≠0`, the application `Nat.zero_lt_of_ne_zero h` yields
a proof of `0<a`.
-/
TheoremDoc Nat.zero_lt_of_ne_zero as "Nat.zero_lt_of_ne_zero"


Statement(a b c:ℕ)(h1: a<b)(h2: c>0): c*a<c*b := by
  sorry

Conclusion "You have made it!"
