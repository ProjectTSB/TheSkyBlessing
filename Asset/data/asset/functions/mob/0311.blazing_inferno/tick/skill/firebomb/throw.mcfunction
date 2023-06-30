#> asset:mob/0311.blazing_inferno/tick/skill/firebomb/throw
#
#
#
# @within function asset:mob/0311.blazing_inferno/tick/skill/firebomb/tick

# サウンド
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 2 1
    playsound minecraft:block.fire.ambient hostile @a ~ ~ ~ 2 1
    playsound minecraft:block.fire.ambient hostile @a ~ ~ ~ 2 0.5
    playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 2 0.5

# ファイアボール召喚
# 召喚
    data modify storage api: Argument.ID set value 314
    execute anchored eyes positioned ^0.4 ^-0.3 ^0.5 run function api:mob/summon

# さっき召喚したアーマースタンドをプレイヤーに向ける
    execute anchored eyes positioned ^0.4 ^-0.3 ^0.5 as @e[type=armor_stand,distance=..0.01,limit=1] facing entity @p feet run tp @s ~ ~0.5 ~ ~ ~