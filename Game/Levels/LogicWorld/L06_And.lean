import Game.Metadata
import Mathlib.Data.Nat.Basic
import Mathlib.Tactic.Linarith

World "LogicWorld"
Level 6

Title "Use And Statements."

Introduction "If you have a hypothesis `h` of type `P ∧ Q` then
`h.left` is a hypothesis of type `P` and `h.right` is a hypothesis
of type `Q`.

In longer chains like `h : P ∧ Q ∧ R` the access to the hypothesis of type
`Q`, for example, is `h.right.left` which gets a little clumsy. As a remedy
you can use the `obtain` tactics. With `obtain ⟨hP,hQ,hR⟩ := h` you can
introduce named hypotheses to each component of structured statements.

Another tactic needed in this example is `rw[e]` which allows you to
rewrite the left side `a` of an equality `e : a = b` by the right side `b`
in the current goal.

If you need the opposite rewrite direction (i.e. `b` replaced by `a`),
write `rw[← e]`. To input `←` type '\\left` or `\\l`.
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

/--
In conjunctions like `h : P ∧ Q ∧ R` use `obtain ⟨hP,hQ,hR⟩ := h` to
introduce named hypotheses to each component.
-/
TacticDoc obtain

NewTactic obtain rw
