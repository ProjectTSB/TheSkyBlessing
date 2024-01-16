#> asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/buff
#
# バフを付与
#
# @within function asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/main

# 映天効果を付与
    data modify storage api: Argument.ID set value 224
    function api:entity/mob/effect/give