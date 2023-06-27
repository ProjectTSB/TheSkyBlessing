#> asset:mob/0311.blazing_inferno/tick/skill/triple_fireball/summon_fireball_aim
#
# 直接狙って放つファイアボール
#
# @within function asset:mob/0311.blazing_inferno/tick/skill/triple_fireball/throw

# 召喚
    data modify storage api: Argument.ID set value 313
    execute anchored eyes positioned ^-0.4 ^-0.3 ^0.5 run function api:mob/summon

# さっき召喚したアーマースタンドをプレイヤーに向ける
    execute anchored eyes positioned ^-0.4 ^-0.3 ^0.5 as @e[type=armor_stand,distance=..0.01,limit=1] facing entity @p feet run tp @s ~ ~0.5 ~ ~ ~