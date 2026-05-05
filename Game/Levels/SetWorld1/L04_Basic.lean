import Game.Metadata

World "SetWorld1"
Level 4

Title "Proving Subset Relations"

Introduction "The subset relation `A ⊆ B` (write `\\sub` for `⊆`) for subsets of
type `U` is essentially equivalent to the universal quantification
`∀ x:U, x ∈ A → x ∈ B`. In particular, you can use `intro x hx` to start its proof.

Conversely, if you have a hypothesis `h : A ⊆ B`, you can specialize it with
another hypothesis `hx : x ∈ A` to obtain a proof of type `x ∈ B`.
Note that you need not specialize with the member `x` _and_ `hx` because
Lean extracts the element from `hx`in that case.

The difference is due to a detail in the forall statement which has the more
precise form
```
∀ ⦃x ∈ U⦄, x ∈ A → x ∈ B
```
where the double curly bracket around x indicates that the parameter is to
be determined implicitly from the second argument (the assumption of the implication).

Instead of specializing, you can also use the other techniques that are
applicable to forall statements (like mapping `h hx` to produce a proof of `x ∈ B`
or using `apply` to move a goal from conclusion to assumption).

In this task you should show three trivial subset statements: The empty set `{}` or `∅`
(write `\\empty` for `∅`) is subset of any other set, every set is subset of itself,
and every set is subset of the universe `Set.univ` which contains all instances of
the underlying type.

While the element relation for the empty set is equivalent to `False` and can be closed
by `contradiction`, the one for the universe is equal to `True` which can be
closed with `exact True.intro`.

The tactic `trivial` combines several tactics like `rfl`, `exact True.intro` or
`contradiction` and thus can be used throughout.
"

Statement (U : Type) (A : Set U) : ∅ ⊆ A ∧ A ⊆ A ∧ A ⊆ Set.univ := by
  sorry

Conclusion "... we are slowly getting started!"

NewTactic trivial
