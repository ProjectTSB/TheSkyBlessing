#> asset:artifact/0999.sextaple_ultima/trigger/gun_summon
#
#
#
# @within function asset:artifact/0999.sextaple_ultima/trigger/3.main

# 召喚
    data modify storage api: Argument.ID set value 302
    function api:mob/summon

# 演出
    particle wax_on ~ ~ ~ 1 1 1 50 80
    particle dust 0.933 1 0 4 ~ ~ ~ 0 2 0 0 30
    playsound entity.generic.explode neutral @a