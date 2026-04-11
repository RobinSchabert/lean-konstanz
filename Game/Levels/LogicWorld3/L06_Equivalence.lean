import Game.Metadata

World "LogicWorld3"
Level 6

Title "Use Forall Statement to Prove Equivalence"

Introduction
"
Since the equivalence statement `P ↔ Q` is an abbrevition of `(P → Q)∧(Q → P)`
it can be proved with the `constructor` tactic followed by the proof of two
implications.

The first implication can be solved with the result of the previous step
(in the form of hypothesis `P`) in an _indirect_ argument.
Just specialize `P` with suitable numbers.

The second implication can be solved with theorem `Nat.mul_lt_mul_of_pos_left`.
because the goal excatly matches the conclusion if you list the premises
`H: a<b` and `h: c>0` behind the name of the theorem, i.e.
`exact Nat.mul_lt_mul_of_pos_left H h`.

From the next level onward, you can access this result under the name
`Nat.mul_lt_mul_left`.
"

Statement(a b c:ℕ)(h: c>0)(P: ∀ m n:ℕ, m ≤ n → c*m ≤ c*n): c*a < c*b ↔ a < b := by
  sorry

Conclusion "Success - you applied a forall statement and mastered an equivalence proof!"
