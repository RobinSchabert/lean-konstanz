import Game.Metadata
import Mathlib.Data.Nat.Basic
import Mathlib.Tactic


World "LogicWorld2"
Level 7

Title "Indirect Proof"

Introduction
"
After unpacking the statement you arrive at a situation where
`2*k=2*l+1` holds. To conclude that this entails `k > l` can
be shown _indirectly_ because the converse statement `k ≤ l`
leads to the contradiction `2*l+1 = 2*k ≤ 2*l`.

In general, if you want to prove a statement `P` by showing that `¬P` leads to
a contradiction, the tactic is `by_contra c`. The negated goal is then
accessible under the name `c` and your new goal is a contradiction.

Also note that the tactic `linarith` proves `False` if (in)equalities
in the hypotheses contradict each other.
"

Statement(n:ℕ): (∃ k:ℕ, n = 2*k+1) → ¬(2 ∣ n) := by
  sorry

Conclusion "Success - you have mastered the indirect proof!"

/--
You can close the current goal of type `P` if you can show a contradiction
under the negated hypothesis `c: ¬P` using the tactic `by_contra c`.
-/
TacticDoc by_contra
NewTactic by_contra
