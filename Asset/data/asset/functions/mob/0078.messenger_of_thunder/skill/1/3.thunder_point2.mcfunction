#> asset:mob/0078.messenger_of_thunder/skill/1/3.thunder_point2
#
#
#
# @within function asset:mob/0078.messenger_of_thunder/skill/1/2.thunder_point1

# AECを召喚
    summon area_effect_cloud ~ ~ ~ {CustomNameVisible:0b,Particle:"block air",Duration:31,Tags:["Object","26.SkillThunderMarker"]}

# 拡散する ハードだと拡散範囲が拡大
    data modify storage lib: Argument.Bounds set value [[10d,10d],[0d,0d],[10d,10d]]
    execute if predicate api:global_vars/difficulty/min/hard run data modify storage lib: Argument.Bounds set value [[15d,15d],[0d,0d],[15d,15d]]

    execute as @e[type=area_effect_cloud,tag=26.SkillThunderMarker,distance=..0.01,limit=1] run function lib:spread_entity/

# 演出
    playsound minecraft:entity.zombie_villager.converted hostile @a ^ ^ ^ 1 1.2 0

# リセット
    data remove storage lib: Argument