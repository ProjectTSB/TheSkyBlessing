#> asset:mob/0131.haruclaire/tick/skill_ice_pillar/2.skill_ice_pillar_aec_summon
#
#
#
# @within function asset:mob/0131.haruclaire/tick/skill_ice_pillar/1.skill_ice_pillar

# 前方拡散でAECを召喚
    execute at @p run summon marker ~ ~20 ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 6
    data modify storage lib: Argument.Spread set value 2d
    execute as @e[type=marker,tag=SpreadMarker,distance=..30] at @p positioned ~ ~20 ~ rotated ~ 90 run function lib:forward_spreader/circle
# 召喚
    execute at @p positioned ~ ~20 ~ facing entity @e[type=marker,tag=SpreadMarker,distance=..30] feet run summon area_effect_cloud ^ ^ ^20 {CustomNameVisible:0b,Particle:"block air",Duration:90,Tags:["Object","3N.SkillPillarMaker"]}
# 演出
    playsound minecraft:entity.puffer_fish.death hostile @a ~ ~ ~ 1 0.3

# キル
    kill @e[tag=SpreadMarker]
