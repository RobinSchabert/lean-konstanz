import Game.Metadata

World "LogicWorld1"
Level 7

Title "Use Conjunctions"

Introduction "In longer chains like `h : P ∧ Q ∧ R` the access to the hypothesis of type
`Q`, for example, is `h.right.left` which gets a little clumsy. As a remedy
you can use the `obtain` tactics. With `obtain ⟨hP,hQ,hR⟩ := h` you can
introduce named hypotheses to each component of structured statements.
The opening bracket `⟨` is obtained by typing a backslash `\\` immediately
followed  by the less-than symbol `<`. Similarly, `\\>` gives you the closing
bracket `⟩`.
"

Statement(a b c e:ℕ)(h : e ∣ a ∧ (2*e) ∣ b ∧ (3*e) ∣ c ): e ∣ (a + b + c) := by
  sorry

Conclusion "Congratulation, you have mastered the next level!"

NewTactic obtain
