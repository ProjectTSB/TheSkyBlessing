#> asset_manager:sacred_treasure/triggers/sneak/reset
#
# スニークトリガー用スコアボードをすべてリセットします
#
# @within function core:tick/post-tick-proc_player

scoreboard players reset @s Sneak.Mainhand
scoreboard players reset @s Sneak.Offhand
scoreboard players reset @s Sneak.Head
scoreboard players reset @s Sneak.Chest
scoreboard players reset @s Sneak.Legs
scoreboard players reset @s Sneak.Feet