#> asset:mob/0078.messenger_of_thunder/skill/1/2.thunder_point
#
#
#
# @within function asset:mob/0078.messenger_of_thunder/skill/1/1

# AECを召喚
    summon area_effect_cloud ~ ~ ~ {CustomNameVisible:0b,Particle:"block air",Duration:30,Tags:["Object","26.SkillThunderMarker"]}
    data modify storage lib: Argument.Bounds set value [[3d,3d],[0],[3d,3d]]
    execute as @e[type=area_effect_cloud,tag=26.SkillThunderMarker,distance=..0.01,limit=1] run function lib:spread_entity/

# 演出
    playsound minecraft:entity.zombie_villager.converted hostile @a ^ ^ ^ 1 1.2 0

# リセット
    data remove storage lib: Argument