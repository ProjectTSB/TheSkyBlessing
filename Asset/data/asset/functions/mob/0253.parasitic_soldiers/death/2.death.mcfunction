#> asset:mob/0253.parasitic_soldiers/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0253.parasitic_soldiers/death/1.trigger

# 召喚
    data modify storage api: Argument.ID set value 254
    function api:mob/summon
    data modify storage api: Argument.ID set value 255
    execute anchored eyes run function api:mob/summon