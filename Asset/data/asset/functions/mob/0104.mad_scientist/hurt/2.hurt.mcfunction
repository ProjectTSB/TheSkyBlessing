#> asset:mob/0104.mad_scientist/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0104.mad_scientist/hurt/1.trigger

# 遠距離で殴られた場合、殺意をむき出しにした最悪なteleport
    execute if entity @p[tag=Attacker,distance=15..] if predicate lib:random_pass_per/45 run function asset:mob/0104.mad_scientist/hurt/3.teleport

# 体力が半分以下ならTagを付与
    execute if entity @s[tag=!2W.HalfHealth] store result score $Health Temporary run data get entity @s AbsorptionAmount 1.0
    execute if entity @s[tag=!2W.HalfHealth] if score $Health Temporary matches ..12500 run tag @s add 2W.HalfHealth
    execute if entity @s[tag=!2W.HalfHealth] run scoreboard players reset $Health Temporary
