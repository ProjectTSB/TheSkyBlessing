#> asset:mob/1004.tultaria/tick/interval
#
#
#
# @within function asset:mob/1004.tultaria/tick/2.tick

# 座標攻撃particle
    execute if entity @s[tag=RW.SkillCoordinate] at @e[type=area_effect_cloud,tag=RW.CoordinateMarker,distance=..100] run function asset:mob/1004.tultaria/tick/particle/coordinate