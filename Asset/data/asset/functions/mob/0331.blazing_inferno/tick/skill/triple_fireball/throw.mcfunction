#> asset:mob/0331.blazing_inferno/tick/skill/triple_fireball/throw
#
# このfunctionでアニメ実行と火の玉飛ばしをやる
#
# @within function asset:mob/0331.blazing_inferno/tick/skill/triple_fireball/tick

# サウンド
    playsound entity.blaze.shoot hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:block.fire.ambient hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:block.fire.ambient hostile @a ~ ~ ~ 2 2
    playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 2 0.7

# 召喚
    data modify storage api: Argument.ID set value 188
    execute anchored eyes positioned ^-0.4 ^-0.3 ^0.5 run function api:mob/summon
    execute anchored eyes positioned ^-0.4 ^-0.3 ^0.5 run tp @e[type=marker,tag=58.Init,distance=..0.01,sort=nearest,limit=1] ~ ~ ~ facing entity @p[gamemode=!spectator,distance=..60] eyes