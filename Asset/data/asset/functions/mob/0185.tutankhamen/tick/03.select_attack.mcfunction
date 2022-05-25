#> asset:mob/0185.tutankhamen/tick/03.select_attack
#
#
#
# @within function asset:mob/0185.tutankhamen/tick/2.tick

#> Private
# @private
    #declare score_holder $Random

# NoAIになる (解除は各技の最後)
    data modify entity @s NoAI set value 1b

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $6 Const

# ある程度はプレイヤーの距離で技を決めたい
    execute if entity @p[gamemode=!spectator,distance=20..32] if predicate lib:random_pass_per/70 run scoreboard players set $Random Temporary 2
    execute if entity @p[gamemode=!spectator,distance=..5] if predicate lib:random_pass_per/40 run scoreboard players set $Random Temporary 4

# 技用Tagを付与
    execute if score $Random Temporary matches 0..1 run tag @s add 55.BurnLaser
    execute if score $Random Temporary matches 2..3 run tag @s add 55.Thunder
    execute if score $Random Temporary matches 4 run tag @s add 55.MagicSquare
    execute if score $Random Temporary matches 5 run tag @s add 55.WarpAttack
# リセット
    scoreboard players reset $Random Temporary