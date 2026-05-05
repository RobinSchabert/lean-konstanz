import GameServer.Commands


/--
Given `h: a≠0`, the application `Nat.zero_lt_of_ne_zero h` yields
a proof of `0<a`.
-/
TheoremDoc Nat.zero_lt_of_ne_zero as "zero_lt_of_ne_zero" in "num"

/--
Given `h1: a<b` and `h2: c>0`, the application `mul_lt_mul_of_pos_left h1 h2` yields
a proof of `c*a < c*b`.
-/
TheoremDoc Nat.mul_lt_mul_of_pos_left as "mul_lt_mul_of_pos_left" in "num"

/--
Given `h1: b≠0` and `h2: a∣b`, the application `ne_zero_of_dvd_ne_zero h1 h2` yields
a proof of `a≠0`.
-/
TheoremDoc ne_zero_of_dvd_ne_zero as "ne_zero_of_dvd_ne_zero" in "num"

/--
If you know `p: k>0` and `lt: k*u < k*v` then a goal of type `u < v`
is proved by `exact (Nat.mul_lt_mul_left p).mp lt`.

Conversely, if you know `p: k>0` and `lt: u < v` a goal of type `k*u < k*v`
is proved with `exact (Nat.mul_lt_mul_left p).mpr lt`.
-/
TheoremDoc Nat.mul_lt_mul_left as "mul_lt_mul_left" in "num"


/-- The theorem `Set.Subset.antisymm` applied to a goal of type set equality `A = B`
transforms it to two goals  `A ⊆ B` and `B ⊆ A`.
-/
TheoremDoc Set.Subset.antisymm as "Subset.antisymm" in "="


/-- The theorem `Set.mem_compl_iff` applied to a set `A` and an element `x`
of corresponding type gives you a proof of `x ∈ Aᶜ ↔ x ∉ A`. In particular,
the theorem can be used for rewriting.
-/
TheoremDoc Set.mem_compl_iff as "mem_compl_iff" in "□ᶜ"
