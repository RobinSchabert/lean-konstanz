import Game.Levels.SetWorld1.L01_Basic
import Game.Levels.SetWorld1.L02_Basic
import Game.Levels.SetWorld1.L03_Basic
import Game.Levels.SetWorld1.L04_Basic
import Game.Levels.SetWorld1.L05_Basic
import Game.Levels.SetWorld1.L06_Basic
import Game.Levels.SetWorld1.L07_Basic
import Game.Levels.SetWorld1.L08_Basic

World "SetWorld1"
Title "Set Basics"

Introduction
"
In Lean, a set $A$ of elements of type `U` is identified with a
function `A` which maps every instance `u` of `U` to a proposition.
To prove that `a:U` belongs to $A$, the task is to show the proposition `A a`.
Adding some syntactic sugar, the proposition `A u` can also be written in the form
`a ∈ A` (with `\\in` for `∈`). With the same amount of sugar, the type `Set U`
is just an approximation of `U → Prop`. Its instances are all possible subsets of
`U`.

In this world, we consider the set of all natural numbers larger than `2` which
is described by the mapping `n ↦ n > 2` from `ℕ` to `Prop`. We can define it like this:
```
def A : Set ℕ := fun n ↦ n > 2
```
where the arrow `↦` (`\\mapsto`) can also be substituted by `=>`.

A more familiar form of the same construction would be:
```
def B := {n : ℕ | n > 2}
```
With these two descriptions of the same set, we will carry out some very
simple experiments.
"
