import Game.Metadata

World "LogicWorld3"
Level 1

Title "Prove and Use Disjunctions"

Introduction
"To prove a disjunction `P ∨ Q` it suffices to show one of the statements.
You can decide for one of them by using the tactics `left` or `right`.

To use a disjunction hypothesis `h: P ∨ Q ∨ R` employ the `obtain` tactic with
the `|` separator, i.e. `obtain hP | hQ | hR := h` allows you to consider
the cases `hp: P`, `hQ: Q` and `hR: R` separately.
"

Statement(P Q R:Prop) : P ∨ Q ∨ R → Q ∨ R ∨ P := by
  sorry

Conclusion "Congratulation - you can work with disjunctions now!"

NewTactic left right
