import Game.Metadata

World "LogicWorld2"
Level 3

Title "Use Implication"

Introduction
"In this example, the implication hypothis has no separate name and a
proof of `2 ∣ n` is not readily available which stops you
from specializing the implication after using the `intro` tactic. You just
know that `4 ∣ n` holds and on paper you would probably use this knowledge to
infer `2 ∣ n` and then conclude with the implication.

With the proof assistant Lean you can use your arguments in a maybe
unfamiliar order: Since the conclusion of `(2 ∣ n  → 6 ∣ n)` matches your goal
you can `apply` the implication to switch the goal to the missing premise
`2 ∣ n`. Now you can easily finish the proof.
"

Statement(n:ℕ): ((2 ∣ n  → 6 ∣ n) ∧ 4 ∣ n) →  6 ∣ n := by
  sorry

Conclusion "Congratulation, you have proved yet another implication!"

NewTactic apply
