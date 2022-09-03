#> asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/5.shoot
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/1.tick

# 召喚
    data modify storage api: Argument.ID set value 1014
    execute positioned ~ ~1.3 ~ run function api:mob/summon

# パーティクル
    particle minecraft:reverse_portal ~ ~ ~ 10 10 10 0 10