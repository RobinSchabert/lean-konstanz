import Game.Metadata

World "SetWorld1"
Level 7

Title "Proving Set Equalities"

Introduction "Apart from comprehension sets, we can also form
image sets whose elements are described parametrically.
A typical example is the set of all even naturals which
can be parametrized in the form `2*n` for `n:ℕ`. The corresponding set
is denoted
```
{2*n | n:ℕ}
```
Internally `x ∈ {2*n | n:ℕ}` has the same meaning as the existence statement
`∃ n:N, x =2*n`. In particular, the `use` tactic can be employed in proofs
and `choose` is available to profit from a corresponding hypothesis.
"

Statement: {4*n | n:ℕ} ⊆ {2*n | n:ℕ} := by
  sorry

Conclusion "... well done!"
