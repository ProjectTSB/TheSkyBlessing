#> asset:mob/0129.lexiel/tick/skill_thunder/2.skill_thunder_summon
#
# 雷を落とす位置を召喚する
#
# @within function asset:mob/0129.lexiel/tick/skill_thunder/1.skill_thunder

# 拡散でAECを召喚
    execute at @p run summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Bounds set value [[4d,4d],[0d,0d],[4d,4d]]
    execute as @e[type=marker,tag=SpreadMarker] at @p run function lib:spread_entity/
# 召喚
    execute at @e[type=marker,tag=SpreadMarker] run summon area_effect_cloud ~ ~ ~ {CustomNameVisible:0b,Particle:"block air",Duration:30,Tags:["Object","3L.SkillThunderMaker"]}
# 演出
    playsound minecraft:entity.puffer_fish.death hostile @a ^ ^ ^20 1 0.3

# キル
    kill @e[tag=SpreadMarker]
