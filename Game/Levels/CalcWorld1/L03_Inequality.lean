import Game.Metadata

World "CalcWorld1"
Level 3

Title "Congruence laws"

Introduction "In this task, you learn the tactic `rel`. With `rel[h]` you can close
a goal of type `t*a < t*b` if `h` is of type `a < b` and `t` is known to be positive.

It also works for other inequality relations and in cases where `t` multiplies
from the right. Similar goals with addition instead of multiplications are also closed.

In the second part of the statement, the multiplication with `t` has to be on the same
side of the arguments for `rel` to work. To do a rewrite, an appropriate
equality can be generated with the `show` command on the spot:
`rw[show t*a = a*t by ring_nf]`.
"

Statement {a b c t : ℚ} (ht : t > 0) (hab: a < b ) (hac: a ≤ c) : a*t < b*t ∧ a*t ≤ t*c:= by
  sorry

Conclusion "That was an easy one - the next task will be more demanding ..."

NewTactic «show» rel
