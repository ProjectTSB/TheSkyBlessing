#> asset:mob/0282.call_fulstuka/tick/spreadteleport
#
#
#
# @within function asset:mob/0282.call_fulstuka/tick/**

# 拡散値
    data modify storage lib: Argument.Bounds set value [[2d,2d],[0d,0d],[2d,2d]]
# 拡散する
    function lib:spread_entity/

# 演出
   execute at @s run particle dragon_breath ~ ~1 ~ 0.5 0.5 0.5 0 10 normal @a
   execute at @s run playsound minecraft:entity.enderman.teleport neutral @a ~ ~ ~ 0.7 0.9 0