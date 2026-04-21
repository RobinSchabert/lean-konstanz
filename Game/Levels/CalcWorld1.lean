import Game.Levels.CalcWorld1.L01_Equality
import Game.Levels.CalcWorld1.L02_Equality
import Game.Levels.CalcWorld1.L03_Inequality
import Game.Levels.CalcWorld1.L04_Inequality

World "CalcWorld1"
Title "Calculations"

Introduction
"
Whenever a relation `∼` is transitive, a prove of `a ∼ d` may be split into a succession of
intermediate statements like `a ∼ b`, `b ∼ c` and `c ∼ d`. In such cases, it is customary to
write the proof as a chain `a ∼ b ∼ c ∼ d` and add reasons for the validity of each step above
the respective `∼` symbol.

This proof style is also available in Lean. The `calc` tactic has the
following structure:
```
calc
  a ∼ b := pab
  _ ∼ c := pbc
  _ ∼ d := pcd
```
where `pab`, `pbc` and `pcd` are proof terms for the respective relations which may be given
in term or in tactic mode.

It is even possible to mix different relations if a generalized transitivity is available.
For example, if `a ∼₁ b` and `b ∼₂ c` implies `a ∼₃ c` then a calc sequence of the form
```
calc
  a ∼₁ b := pab
  _ ∼₂ c := pbc
```
closes a goal of type `a ∼₃ c`. Here, `pab` and `pbc` are proof terms for the
respective relations.
"
