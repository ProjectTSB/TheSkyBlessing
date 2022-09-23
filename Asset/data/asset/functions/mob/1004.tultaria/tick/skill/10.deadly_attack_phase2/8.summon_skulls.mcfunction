#> asset:mob/1004.tultaria/tick/skill/10.deadly_attack_phase2/8.summon_skulls
#
# 左右に召喚
#
# @within function asset:mob/1004.tultaria/tick/skill/10.deadly_attack_phase2/1.tick

# 召喚
    data modify storage api: Argument.ID set value 1018
    execute rotated ~ 0 positioned ^5 ^ ^ run function api:mob/summon
    data modify storage api: Argument.ID set value 1018
    execute rotated ~ 0 positioned ^-5 ^ ^ run function api:mob/summon