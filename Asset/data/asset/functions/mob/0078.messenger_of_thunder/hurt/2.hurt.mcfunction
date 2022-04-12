#> asset:mob/0078.messenger_of_thunder/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0078.messenger_of_thunder/hurt/1.trigger

#> Private
# @private
    #declare score_holder $Health

# 演出
    particle dust 1 1 0 1 ~ ~1.6 ~ 0.4 0.6 0.4 0 10 normal @a
    particle dust 0.3 0.3 0.3 1 ~ ~1.6 ~ 0.4 0.6 0.4 0 30 normal @a
    playsound block.respawn_anchor.deplete hostile @a ~ ~ ~ 0.6 2 0

# 体力半分以下でTagを付与
    execute if entity @s[tag=!26.HalfHP] store result score $Health Temporary run data get entity @s AbsorptionAmount
    execute if entity @s[tag=!26.HalfHP] if score $Health Temporary matches ..12500 run tag @s add 26.HalfHP
    scoreboard players reset $Health Temporary