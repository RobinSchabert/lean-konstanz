import Game.Metadata

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
NewTactic constructor
