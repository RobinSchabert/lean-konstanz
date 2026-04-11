import Game.Metadata

World "LogicWorld2"
Level 4

Title "Prove and Use Negation"

Introduction
"In this example we learn how to deal with negations `¬ P` (the symbol
is obtained as in LaTeX by typing `\\neg`). The standard way to prove
the negation of a proposition `P` is to assume that `P` was true and
prove a false statement, i.e. a _contradiction_.

Following this idea, the negation is represented as implication `P → False` in Lean
so that the indirect proof can simply be initiated with the `intro` tactic.

Since any statement is true in a contradictory context the tactic `contradiction`
can be used to prove the goal `False`. It checks the hypotheses for obvious contradictions
like `1=2` or the occurence of some hypothesis `h: P` together with its negation `h': ¬ P`.

In our example, we get `¬(2 ∣ n)` as assumption of the implication so that a contradiction
is obtained by proving the opposite statement `2 ∣ n`. We use the `have` tactic
to provide a proof of such an additional statement. Unfortunately, this tactic does not
work properly in _typewriter mode_. Switch to the _editor mode_ with the `</>` button in
the upper left corner and type `have H: 2 ∣ n := by` where the divisibility symbol is obtained
by typing `\\|`. The proof has to be given in the following lines (with a constant indentation
of at least one blank).
"

Statement(n:ℕ): ¬(2 ∣ n) → ¬(4 ∣ n) := by
  sorry

Conclusion "Congratulation, you have finished your first proof by contradiction!"

NewTactic «have» contradiction
