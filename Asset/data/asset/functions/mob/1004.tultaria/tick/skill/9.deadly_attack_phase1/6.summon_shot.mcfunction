#> asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/6.summon_shot
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/5.shoot_tick

# 召喚
    data modify storage api: Argument.ID set value 1014
    execute positioned ~ ~ ~ run function api:mob/summon

# 演出
    particle minecraft:reverse_portal ~ ~ ~ 10 10 10 0 10
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 2 1.5
