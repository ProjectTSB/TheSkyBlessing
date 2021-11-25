#> asset:mob/0185.tutankhamen/tick/05.reset
#
#
#
# @within function
#   asset:mob/0185.tutankhamen/tick/burn_lazer/01.main
#   asset:mob/0185.tutankhamen/tick/thunder/01.main
#   asset:mob/0185.tutankhamen/tick/magic_square/01.main

# NoAI解除
    data modify entity @s NoAI set value 0b

# スコアリセット
    scoreboard players reset @s 55.Tick
    scoreboard players reset @s 55.AttackTick

# Tag削除
    execute if entity @s[tag=55.BurnLazer] run tag @s remove 55.BurnLazer
    execute if entity @s[tag=55.Thunder] run tag @s remove 55.Thunder
    execute if entity @s[tag=55.MagicSquare] run tag @s remove 55.MagicSquare
    execute if entity @s[tag=55.WarpAtack] run tag @s remove 55.WarpAtack
    execute if entity @s[tag=55.4thLazer] run tag @s remove 55.4thLazer