#> asset:mob/0129.lexiel/tick/2.15.skill_thunder_summon
#
# 雷を落とす位置を召喚する
#
# @within function asset:mob/0129.lexiel/tick/2.14.skill_thunder

# 前方拡散でAECを召喚
    execute at @p run summon marker ~ ~20 ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 6
    data modify storage lib: Argument.Spread set value 2d
    execute as @e[type=marker,tag=SpreadMarker] at @p positioned ~ ~20 ~ rotated ~ 90 run function lib:forward_spreader/circle
# 召喚
    execute at @p positioned ~ ~20 ~ facing entity @e[type=marker,tag=SpreadMarker] feet run summon area_effect_cloud ^ ^ ^20 {CustomNameVisible:0b,Particle:"block air",Duration:30,Tags:["Object","3L.SkillThunderMaker"]}
# 演出
    execute at @p positioned ~ ~20 ~ facing entity @e[type=marker,tag=SpreadMarker] feet run particle barrier ^ ^ ^20 0 0 0 0 0 normal

# キル
    kill @e[tag=SpreadMarker]
