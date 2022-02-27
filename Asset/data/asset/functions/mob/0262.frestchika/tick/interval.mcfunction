#> asset:mob/0262.frestchika/tick/interval
#
#
#
# @within function asset:mob/0262.frestchika/tick/2.tick

# 座標攻撃particle
    execute if entity @s[tag=7A.SkillCoordinate] at @e[type=area_effect_cloud,tag=7A.CoordinateMarker,distance=..100] run function asset:mob/0262.frestchika/tick/particle/coordinate

# 座標外し攻撃particle
    execute if entity @s[tag=7A.SkillOffCoordinate] at @e[type=area_effect_cloud,tag=7A.OffCoordinateMarker,distance=..100] positioned ~ ~0.2 ~ run function asset:mob/0262.frestchika/tick/particle/off_coordinate