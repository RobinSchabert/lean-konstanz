import Game.Metadata
import Mathlib.Data.Nat.Basic
-- import Mathlib.Tactic.Linarith
-- import Mathlib.Tactic.Ring
import Mathlib.Tactic


World "LogicWorld2"
Level 7

Title "Proof by Induction"

Introduction
"Often, the induction basis can be solved by a simple computation. If the
expression just involves arithmetic manipulations of numbers, the tactic
`norm_num` can solve the goal.
"

Statement(n:ℕ) : 3 ∣ (n^3 + 2*n) := by
  sorry

Conclusion "Congratulation - another proof by induction!"

/--
To prove or simplify (in)equalities by computing arithmetic expressions involving
explicit numbers, the tactic `norm_num` can be used. It can also be
applied to some hypothsis `h` by typing `norm_num at h`.
-/
TacticDoc norm_num
NewTactic norm_num
