#> asset:mob/0264.dark_summoner/tick/event/summon_minions
#
#
#
# @within function asset:mob/0264.dark_summoner/tick/event/casting

#

# パーティクル
    execute positioned ^ ^0.1 ^ run function asset:mob/0264.dark_summoner/tick/event/particle

# 召喚
    data modify storage api: Argument.ID set value 265
    function api:mob/summon

# 音とパーティクル
    playsound minecraft:item.bottle.fill_dragonbreath hostile @a ~ ~ ~ 2 2
    playsound minecraft:entity.enderman.ambient hostile @a ~ ~ ~ 2 1.2
    playsound minecraft:entity.ender_eye.death hostile @a ~ ~ ~ 2 2
    playsound minecraft:entity.vex.ambient hostile @a ~ ~ ~ 1 1.75
    playsound minecraft:entity.vex.ambient hostile @a ~ ~ ~ 1 2