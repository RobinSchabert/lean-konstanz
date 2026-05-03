import Game.Metadata
import Game.Levels.SetWorld1.L01_Basic

World "SetWorld1"
Level 2

Title "Element Relation"

Introduction "Next we check the sugar coated form of the element relation.
With `unfold A B` you can see that `A 3` is directly reduced to `3 > 2`.

Next we can resolve the element expressions with `dsimp[(· ∈ ·)]`
(use `\\cdot` to obtain `·`). In this case, `3 ∈ { n | n > 2}` is reduced
directly to `3 > 2`. This shows that the two forms behave slightly differently
under simplifications and only lead to identical statements after several steps.

Finally, `dsimp[Set.Mem]` replaces the evaluation of the function `Set.Mem`
to `3 > 2` and the goal may be closed
with `constructor ; rfl ; rfl` which splits the and expression
into two equivalences which are both closed with the `rfl` tactic.

In such situations where each subgoal of a first tactic can be closed with a
common second tactic, you can employ the separator `<;>` instead of `;`
which repeats the second one for all subgoals of the first.

Note that `constructor <;> rfl` finishes the proof also without unfolding and
simplifying because `rfl` wraps these reduction steps.
"

Statement: (A 3 ↔ 3 ∈ A) ∧ (B 3 ↔ 3 ∈ B) := by
  sorry

Conclusion "... again you didn't do much."

NewTactic dsimp
