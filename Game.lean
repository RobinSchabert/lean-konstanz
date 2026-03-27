import Game.Levels.LogicWorld1
import Game.Levels.LogicWorld2

-- Here's what we'll put on the title screen
Title "Theorem proving with Lean"
Introduction
"
This game introduces Lean's basic tactics for proving elementary statements
and describes how typical mathematical structures are realized in Lean.

We assume that you are already familiar with pen and paper proofs and we
strongly recommend to apply this knowledge _before_ attemptig any formalization.
Having a clear idea about _what_ you want to show allows you to concentrate
solely on _how_ you can achieve this with the proof assistant.

But now enjoy learning keyboard and screen proofs!
"

Info "
Theorem proving with Lean Version 0.0.
Authors: MJ, RS
Github: https://github.com/RobinSchabert/lean-konstanz
"

/-! Information to be displayed on the servers landing page. -/
Languages "en"
CaptionShort "Proving with Lean"
CaptionLong "A game to learn Lean's basic tactics and strategies."
-- Prerequisites "" -- add this if your game depends on other games
-- CoverImage "images/cover.png"

/-! Build the game. Show's warnings if it found a problem with your game. -/
MakeGame
