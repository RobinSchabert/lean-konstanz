import Game.Metadata
import Mathlib.Data.Nat.Basic
import Mathlib.Tactic


World "LogicWorld3"
Level 1

Title "Prove and Use Disjunctions"

Introduction
"To prove a disjunction `P ∨ Q` it suffices to show one of the statements.
You can decide for one of them by using the tactics `left` or `right`.

To use a disjunction hypothesis `h: P ∨ Q ∨ R` employ the `obtain` tactic with
the `|` separator, i.e. `obtain hP | hQ | hR := h` allows you to consider
the cases `hp: P`, `hQ: Q` and `hR: R` separately.

Use the `exact e` tactic to close a goal which is exactly matched by
a hypothesis `e`.
"

Statement(P Q R:Prop) : P ∨ Q ∨ R → Q ∨ R ∨ P := by
  sorry

Conclusion "Congratulation - you can work with disjunctions now!"

/--
If your goal is of type `P ∨ Q`, use `left` to continue with a proof of `P`.
-/
TacticDoc left
/--
If your goal is of type `P ∨ Q`, use `right` to continue with a proof of `Q`.
-/
TacticDoc right
/--
If your goal is matched exactly by some hypothesis `h`, you can close it
with `exact h`.
-/
TacticDoc left

NewTactic left right
