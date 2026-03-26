import Game.Levels.LogicWorld

-- Here's what we'll put on the title screen
Title "Theorem proving with Lean"
Introduction
"
This game introduces Lean's basic tactics and strategies.
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
