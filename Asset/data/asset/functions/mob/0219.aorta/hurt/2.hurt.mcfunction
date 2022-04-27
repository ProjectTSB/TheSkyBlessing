#> asset:mob/0219.aorta/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0219.aorta/hurt/1.trigger

#> Temporary
# @private
    #declare score_holder $Health
    #declare score_holder $MaxHealth

# 演出
    particle dust 0.769 0 0 1 ~ ~1 ~ 0.6 0.6 0.6 0 50 normal @a
    playsound block.conduit.ambient hostile @a ~ ~ ~ 0.8 1.5 0

# 移動速度上昇を得る
    effect give @s speed 3 1 true

# 現在体力割合を数値化する
    execute store result score $Health Temporary run data get entity @s AbsorptionAmount 100
    execute store result score $MaxHealth Temporary run function api:mob/get_max_health
    scoreboard players operation $Health Temporary /= $MaxHealth Temporary

# もし体力が40%以下の場合、高確率で破裂する
    execute if score $Health Temporary matches ..40 if predicate lib:random_pass_per/70 run function asset:mob/0219.aorta/hurt/3.rupture

# スコアリセット
    scoreboard players reset $Health Temporary
    scoreboard players reset $MaxHealth Temporary