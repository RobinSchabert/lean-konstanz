import Game.Metadata

World "SetWorld1"
Level 7

Title "Dealing with Enumeration Sets"

Introduction "When dealing with general enumeration sets, the `simp` tactic reduces
element expressions to disjunctions of equalities which can then be treated
in the usual way. Start your proof with `ext x; simp` and proceed.

Note: Since curly brackets are used for various purposes, the specification
of an enumeration set of type `Set U` requires a type specification to
distinguish it from other uses. In this task, it suffices to mark the type of one
of the sets. The other is then correctly interpreted automatically.
"

Statement (α : Type) (a b c : α) : ({a, b, c} : (Set α)) = {b,c,a} := by
  sorry

Conclusion "... well done!"

NewTactic simp
