import Game.Metadata

World "LogicWorld1"
Level 6

Title "Use Conjunctions"

Introduction "If you have a hypothesis `h` of type `P ∧ Q` then
`h.left` is a hypothesis of type `P` and `h.right` is a hypothesis
of type `Q`.

Another tactic needed in this example is `rw[e]` which allows you to
rewrite the left side `a` of an equality `e : a = b` by the right side `b`
in the current goal. If you want to rewrite in some hypothesis `h` use
`rw[e] at h`.

In case you need the opposite rewrite direction (i.e. `b` replaced by `a`),
use `rw[← e]`. The arrow symbol  `←` is obtained by typing a backslash `\\`
immediately followed by the word `left` or simply the letter `l`,
i.e. `\\left` or `\\l`.
"

Statement(a b c:ℕ)(h : a ∣ b ∧ b ∣ c): a ∣ c := by
  sorry

Conclusion "Congratulation, you have mastered the next level!"

NewTactic rw
