import Game.Metadata

World "LogicWorld2"
Level 8

Title "Proof by Induction"

Introduction
"If you have to prove a statement which involves a natural number as a parameter
then proof by induction may be an option. You can initiate a simple induction
proof with the tactic `induction' n with m IH` where `n` is the natural
parameter you are aiming at.

The first name you provide after `with` replaces `n` during the induction proof
which starts with the case `m=0`. Once this is proved, the goal changes to the
induction step. You can master it with the induction hypothesis which is
accessible under the second name `IH` provided after `with`.

To prove (in)equalities with relevant variables appearing in products or
powers you may try the tactic `ring_nf`.
"

Statement(n:ℕ) : 2^n ≥ n+1 := by
  sorry

Conclusion "Congratulation - your first proof by induction!"


NewTactic induction' ring_nf
