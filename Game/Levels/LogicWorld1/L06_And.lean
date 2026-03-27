import Game.Metadata
import Mathlib.Data.Nat.Basic
import Mathlib.Tactic.Linarith

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

/--
To rewrite the left side `a` of an equality `e : a = b` by the right side `b`
in the current goal use `rw[e]`.

To rewrite within a hypothesis `h` use `rw[e] at h`.

To perform several rewrites in a sequence, use `rw[e,f,g]`.

If you need the opposite rewrite direction use `rw[← e]`.
-/
TacticDoc rw

NewTactic rw
