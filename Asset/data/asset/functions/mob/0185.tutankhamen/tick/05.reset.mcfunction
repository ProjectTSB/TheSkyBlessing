#> asset:mob/0185.tutankhamen/tick/05.reset
#
#
#
# @within function
#   asset:mob/0185.tutankhamen/tick/burn_laser/01.main
#   asset:mob/0185.tutankhamen/tick/thunder/01.main
#   asset:mob/0185.tutankhamen/tick/magic_square/01.main

# NoAI解除
    data modify entity @s NoAI set value 0b

# スコアリセット
    scoreboard players set @s 55.Tick -80
    scoreboard players reset @s 55.AttackTick

# Tag削除
    execute if entity @s[tag=55.BurnLaser] run tag @s remove 55.BurnLaser
    execute if entity @s[tag=55.Thunder] run tag @s remove 55.Thunder
    execute if entity @s[tag=55.MagicSquare] run tag @s remove 55.MagicSquare
    execute if entity @s[tag=55.WarpAttack] run tag @s remove 55.WarpAttack
    execute if entity @s[tag=55.4thLaser] run tag @s remove 55.4thLaser