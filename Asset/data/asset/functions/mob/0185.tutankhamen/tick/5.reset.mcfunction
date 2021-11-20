#> asset:mob/0185.tutankhamen/tick/5.reset
#
#
#
# @within function asset:mob/0185.tutankhamen/tick/burn_razer/1.main

# NoAI解除
    data modify entity @s NoAI set value 0b

# スコアリセット
    scoreboard players reset @s 55.Tick
    scoreboard players reset @s 55.AttackTick

# Tag削除
    execute if entity @s[tag=55.BurnRazer] run tag @s remove 55.BurnRazer
    execute if entity @s[tag=55.Thunder] run tag @s remove 55.Thunder
    execute if entity @s[tag=55.MagicSquare] run tag @s remove 55.MagicSquare
    execute if entity @s[tag=55.WarpAtack] run tag @s remove 55.WarpAtack