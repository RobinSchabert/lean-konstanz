import GameServer.Commands

-- in W1 L01
/--
If your goal is an existence statement, you can introduce a witness
`w` with `use w`. Several witnesses `w,u` for iterated existence statements
can be provided as `use w,u`.
-/
TacticDoc use


-- in W1 L02
/--
If your goal is an (in)equality statement involving
simple linear arithmetic operations,
the `linarith` tactic may help to prove it using already
available (in)equalities among your hypotheses.

The tactic `linarith` also proves `False` if (in)equalities
in the hypotheses contradict each other.
-/
TacticDoc linarith


-- in W1 L03
/--
To benefit from a hypothesis `h` of type `∃ x:X, P` you can use the tactic
`choose u hu using h`.
-/
TacticDoc choose

-- in W1 L04
/--
To prove a goal of type `P ∧ Q ∧ ... ∧ R` you can use the tactic
`constructor` which splits the goal into supgoals of type `P, Q, ..., R`.

Since an equivalence `P ↔ Q` can be considered as a conjunction of two
implications, the `constructor` tactic can als be used in this case.
-/
TacticDoc constructor

-- in W1 L06
/--
To rewrite the left side `a` of an equality `e : a = b` by the right side `b`
in the current goal use `rw[e]`.

To rewrite within a hypothesis `h` use `rw[e] at h`.

To perform several rewrites in a sequence, use `rw[e,f,g]`.

If you need the opposite rewrite direction use `rw[← e]`.
-/
TacticDoc rw

-- in W1 L07
/--
In conjunctions like `h : P ∧ Q ∧ R` use `obtain ⟨hP,hQ,hR⟩ := h` to
introduce named hypotheses to each component.

In disjunctions like `h : P ∨ Q ∨ R` use `obtain hP | hQ | hR := h` to
introduce named hypotheses for the separate cases.
-/
TacticDoc obtain

-- in W2 L01
/--
If your goal has type `P → Q`, the tactic `intro h` adds a hypothesis `h` of
type `P` to your assets and flips your goal to type `Q`.

For goals of type `∀ x:X, P`, using `intro a` introduces
an object `a` of type `X`. Your goal changes to `P`
with the parameter `x` replaced by your chosen name `a`.
-/
TacticDoc intro

-- in W2 L02
/--
If `h` is of type `P → Q` and `p` is of type `P` then
`specialize h p` converts `h` into type `Q`.

If `h` is of type `∀ x:X, P` and `b` is of type `X` then `specialize h b` converts `h` to type
`P` with `b` in place of `x`.
-/
TacticDoc specialize

/--
If your goal is matched exactly by some hypothesis `e`, you can close it
with `exact e`.
-/
TacticDoc exact

-- in W2 L03
/--
If `h` is of type `P → Q` and your goal is of type `Q`, you can use `apply h`
to transform the goal to type `P`.
-/
TacticDoc apply

-- in W2 L04
/--
To prove an auxiliary statement of type `P` use `have h: P := by` followed
by the (constantly indented) proof. Alternatively, you can give the commands separated by
semicolons directly after `by`.

If you need to duplicate some hypothesis `h` before it is transformed by some tactic,
you can use `have h' := h` to create a copy `h'`.

If you need the conclusion of some theorem `T` as an auxiliary statement, you can use
`have c := T a` or `have c := by apply T a` if `a` proves the assumption of `T`.
-/
TacticDoc «have»

/--
If the hypotheses are obviously contradictory, you can always close the current goal
with the tactic `contradiction`. In particular, it covers cases like
`1=2` or the occurence of some hypothesis `h: P` together with its negation `h': ¬ P`.
-/
TacticDoc contradiction

-- in W2 L07
/--
You can close the current goal of type `P` if you can show a contradiction
under the negated hypothesis `c: ¬P` using the tactic `by_contra c`.
-/
TacticDoc by_contra

-- in W2 L08
/--
To prove a proposition involving a variable `n` of some inductive type (like the naturals)
the tactic `induction' n with m IH` can be used. The first name after `with` replaces the
variable name `n` during the induction proof in which the second name is used to denote the
induction hypothesis.
-/
TacticDoc induction'
/--
To prove an (in)equality in which the relevant variables appear in products or
powers you may try the tactic `ring_nf`.
-/
TacticDoc ring_nf

-- in W2 L09
/--
To prove or simplify (in)equalities by computing arithmetic expressions involving
explicit numbers, the tactic `norm_num` can be used. It can also be
applied to some hypothsis `h` by typing `norm_num at h`.
-/
TacticDoc norm_num

-- in W3 L01
/--
If your goal is of type `P ∨ Q`, use `left` to continue with a proof of `P`.
-/
TacticDoc left
/--
If your goal is of type `P ∨ Q`, use `right` to continue with a proof of `Q`.
-/
TacticDoc right

-- in W3 L03
/--
You can close the current goal if you can
prove it under the hypotheses `P` and `¬P` separately. Use the tactic
`by_cases h: P`.
-/
TacticDoc by_cases

-- in CW1 L01

/--
If `a ∼₁ b` and `b ∼₂ c` implies `a ∼₃ c` then a calc sequence of the form
```
calc
  a ∼₁ b := pab
  _ ∼₂ c := pbc
```
closes a goal of type `a ∼₃ c` when `pab` and `pbc` are proof terms for the
respective relations and the transitivity rule has been registered.
-/
TacticDoc «calc»

-- in CW1 L03
/--
The tactic `rel[hab]` closes a goal of type `f a ≤ f b` provided
`f` is a registered monotonic function like `f x = t*x` with
some non-negative `t` or `f x = t+x` for any number `t`. The
hypothesis `hab` has to assure the corresponding relation between
the arguments, i.e. `hab: a ≤ b`.

The tactic also works for other inequality relations.
-/
TacticDoc rel

/--
The tactic `show <type> by <tactic>` produces a term of the described type
if the proof after `by` is successful.

It can be used for example in `rw[show <type> by <tactic>]` to generate
an equality or an equivalence without naming it with a separate `have` command.
-/
TacticDoc «show»

/--
The tactic `rfl` closes a goal of type `a ∼ b` if `sim` is a registered
reflexive relation. It tries to reduce `a` and `b` to an identical expresion.
-/
TacticDoc rfl

/--
The tactic `unfold A` resolves the defined name `A` by the expression
it abbreviates. You can unfold various names at once by writing `unfold A B C`.
It is aso possible to unfold definitions `at` some hypothesis.
-/
TacticDoc unfold

/--
The tactic `dsimp[A]` resolves the defined name `A` and evaluates
function expressions when possible. It is similar to `unfold` but
acts somewhat differently with respect to recursive definitions and
sidde effects.

It is aso possible to use the `dsimp` tactic `at` some hypothesis.
-/
TacticDoc dsimp

/--
The tactic `trivial` tries several tactics like `rfl`, `exact True.intro`,
`contradiction` or `exact h` with an available hypothesis `h`that matches the goal.
-/
TacticDoc trivial

/--
The tactic `ext x` transforms a goal of type set equality `A = B` into
the equivalence `x ∈ A ↔ x ∈ B`.
-/
TacticDoc ext

/--
The tactic `simp` is a very powerful simplifier which resolves definitions
and also applies theorems. Use it carefully because it may be
quite time consuming.
-/
TacticDoc simp

/--
The tactic `decide` closes goals which are decidable, i.e. for which an
algorithmic solution method has been registered.
-/
TacticDoc decide

/--
The tactic `reduce` aggressively transforms the goal to its most basic normal form.
-/
TacticDoc reduce
