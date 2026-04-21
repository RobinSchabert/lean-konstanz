import Game.Metadata

World "CalcWorld1"
Level 1

Title "Equality Chains"

Introduction "We begin with chains of equalities. In the first task, you
should derive the value of `(a+b)^2` given the value of `(a-b)^2` and
the one of `a*b`. Hint: compute the difference between the first and second
binomial formula and use the `ring_nf` and `rw` tactics.
"

Statement {a b : ℚ} (h1 : a - b = 4) (h2 : a * b = 1) : (a + b) ^ 2 = 20 := by
  sorry

Conclusion "Congratulation, you have completed your first chain calculation!"

NewTactic  «calc»
