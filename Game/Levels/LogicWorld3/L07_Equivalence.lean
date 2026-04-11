import Game.Metadata

World "LogicWorld3"
Level 7

Title "Use of Equivalence"

Introduction
"
In this task you can apply the previous theorems to show antisymmetry
of the divisibility relation. Hint: you may start with a case distinction
`a=0` and `a≠0`.

In the second case, the goal `a = b` follows once `a≤b` and `b≤a` are shown.
Both proofs follow the same idea due to symmetry. In an indirect argument
we assume ¬(a≤b), i.e. `b<a`. Due to divisibility this implies `a*k < a*1`
for some `k` so that the equivalence proven in the previous level can be
applied to show `k<1` which can be turned into a contradiction afterwards.

If `pa: a>0` and `h: a*k < a*1` are available then the detailed
chain of commands is:
1. Get the equivalence: `have s1: a*k < a*1 ↔ k < 1 := Nat.mul_lt_mul_left pa`.
2. Extract the implication: `have s2: a*k < a*1 → k < 1 := s1.mp`.
3. Extract the conclusion: `have s3: k < 1 := s2 h`

Abbreviated in a single expression, this reads:
`have s3: k < 1 := (Nat.mul_lt_mul_left pa).mp h`.

In case you need the other implication direction use `mpr` (modus ponens reverse)
instead of `mp` (modus ponens).

Note that other theorems inventory may be useful for this task - check them out!
"

/--
Given `h1: b≠0` and `h2: a∣b`, the application `ne_zero_of_dvd_ne_zero h1 h2` yields
a proof of `a≠0`.
-/
TheoremDoc ne_zero_of_dvd_ne_zero as "ne_zero_of_dvd_ne_zero"

/--
If you know `p: k>0` and `lt: k*u < k*v` then a goal of type `u < v`
is proved by `exact (Nat.mul_lt_mul_left p).mp lt`.

Conversely, if you know `p: k>0` and `lt: u < v` a goal of type `k*u < k*v`
is proved with `exact (Nat.mul_lt_mul_left p).mpr lt`.
-/
TheoremDoc Nat.mul_lt_mul_left as "Nat.mul_lt_mul_left"
NewTheorem ne_zero_of_dvd_ne_zero Nat.mul_lt_mul_left

Statement(a b:ℕ): a ∣ b ∧ b ∣ a → a = b := by
  sorry

Conclusion "Congratulations - You have made it!"
