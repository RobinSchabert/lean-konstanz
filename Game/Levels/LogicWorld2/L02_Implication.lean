import Game.Metadata

World "LogicWorld2"
Level 2

Title "Use Implication"

Introduction
"If one of your hypotheses is of type `h : P → Q` and
you have a hypothesis `p` of type `P`, you can _transform_
`h`to type `Q` by _using_ the implication with `p`. This is achieved
with te tactic `specialize h p`.

If a hypothesis `e` has exactly the type of your goal, you can close it
by typing `exact e`.
"

Statement(P Q R: Prop)(h1: P  → Q )(h2: Q  → R )(p: P): R := by
  sorry

Conclusion "Now let's use this in a more interesting scenario ..."

/- Use these commands to add items to the game's inventory. -/
NewTactic specialize exact
