import Game.Metadata
import Mathlib.Data.Int.Basic
import Mathlib.Tactic.Linarith

World "LogicWorld2"
Level 2

Title "Use Implication"

Introduction
"If one of your hypotheses is of type `h : P → Q` and
you have a hypothesis `hP` of type `P`, you can close a goal of
type `Q` by _applying_ the implication to `hP`.

This is achieved by typing `apply h hP`.
"

Statement(n:ℕ): ((2 ∣ n  → 6 ∣ n) ∧ 2 ∣ n) → 6 ∣ n := by
  sorry

Conclusion "Congratulation, you have mastered the next level!"

/- Use these commands to add items to the game's inventory. -/
/--
With `apply h hP` you prove a goal of type `Q` if `h` is of type `P → Q`
and `hP` is of type `P`.
-/
TacticDoc apply
NewTactic apply
