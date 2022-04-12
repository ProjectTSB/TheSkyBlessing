#> asset:mob/0150.contamination/gus_summon
#
#
#
# @within function asset:mob/0150.contamination/**/**

# ガスを召喚する
    data modify storage api: Argument.ID set value 158
    function api:mob/summon
# 演出
    playsound minecraft:entity.generic.extinguish_fire hostile @a ~ ~ ~ 1 0.7
    playsound minecraft:entity.generic.extinguish_fire hostile @a ~ ~ ~ 1 1
    playsound minecraft:entity.generic.extinguish_fire hostile @a ~ ~ ~ 1 1.7
