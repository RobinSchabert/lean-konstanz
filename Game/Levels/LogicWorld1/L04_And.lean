import Game.Metadata
import Mathlib.Data.Nat.Basic
import Mathlib.Tactic.Linarith

World "LogicWorld1"
Level 4

Title "Prove Conjuctions"

Introduction "Our next statement type is conjuction `P ∧ Q`.
To generate proofs of this type, we use the `constructor` tactic
which splits the original goal into separate goals for each
of the propositions `P, Q` contained in the conjunction.
"

Statement: 2 ∣ 6 ∧ 3 ∣ 6 := by
  sorry

Conclusion "Congratulation, you have mastered the next tactic!"

/- Use these commands to add items to the game's inventory. -/
/--
To prove a goal of type `P ∧ Q ∧ ... ∧ R` you can use the tactic
`constructor` which splits the goal into supgoals of type `P, Q, ..., R`.
-/
TacticDoc constructor
NewTactic constructor
