#> asset:sacred_treasure/0105.secret_meat/trigger/effect/effect
#
#
#
# @within function asset:sacred_treasure/0105.secret_meat/trigger/effect/schedule
#> Private
# @private
    #declare score_holder $Random

# 演出
    particle minecraft:electric_spark ~ ~1 ~ 0.4 0.4 0.4 0 2

# スコアをへらす
    scoreboard players remove @a 2X.EffectTime 1

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $8 Const
# 向きを適当に変える
    execute if score $Random Temporary matches 0 run tp @s ~ ~ ~ ~2 ~2
    execute if score $Random Temporary matches 1 run tp @s ~ ~ ~ ~-2 ~-2
    execute if score $Random Temporary matches 2 run tp @s ~ ~ ~ ~2 ~-2
    execute if score $Random Temporary matches 3 run tp @s ~ ~ ~ ~-2 ~2
    execute if score $Random Temporary matches 4 run tp @s ~ ~ ~ ~ ~4
    execute if score $Random Temporary matches 5 run tp @s ~ ~ ~ ~ ~-4
    execute if score $Random Temporary matches 6 run tp @s ~ ~ ~ ~-4 ~
    execute if score $Random Temporary matches 7 run tp @s ~ ~ ~ ~4 ~
    scoreboard players reset $Random Temporary

# タグを消す
    execute if score @s 2X.EffectTime matches ..0 run tag @s remove 2X.Effect
    execute if entity @s[tag=Death] run tag @s remove 2X.Effect
    execute if entity @s[tag=Death] run scoreboard players reset @s 2X.EffectTime