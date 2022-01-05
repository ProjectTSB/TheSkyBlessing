#> asset:mob/0185.tutankhamen/tick/03.select_attack
#
#
#
# @within function asset:mob/0185.tutankhamen/tick/2.tick

# NoAIになる (解除は各技の最後)
    data modify entity @s NoAI set value 1b

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $6 Const
# 技用Tagを付与
    execute if score $Random Temporary matches 0..1 run tag @s add 55.BurnLaser
    execute if score $Random Temporary matches 2..3 run tag @s add 55.Thunder
    execute if score $Random Temporary matches 4 run tag @s add 55.MagicSquare
    execute if score $Random Temporary matches 5 run tag @s add 55.WarpAttack
# リセット
    scoreboard players reset $Random Temporary