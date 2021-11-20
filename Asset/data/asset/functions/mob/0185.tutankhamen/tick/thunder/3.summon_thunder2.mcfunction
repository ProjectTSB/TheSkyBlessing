#> asset:mob/0185.tutankhamen/tick/thunder/3.summon_thunder2
#
#
#
# @within function asset:mob/0185.tutankhamen/tick/thunder/2.summon_thunder1

# 前方拡散でAECを召喚
    execute at @p run summon marker ~ ~20 ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 6
    data modify storage lib: Argument.Spread set value 2d
    execute as @e[type=marker,tag=SpreadMarker] at @p positioned ~ ~20 ~ rotated ~ 90 run function lib:forward_spreader/circle
# 召喚
    execute at @p positioned ~ ~20 ~ facing entity @e[type=marker,tag=SpreadMarker] feet run summon area_effect_cloud ^ ^ ^20 {CustomNameVisible:0b,Particle:"block air",Duration:40,Tags:["Object","55.SkillThunderMaker"]}
# 演出
    execute at @p run playsound minecraft:entity.puffer_fish.death ambient @a ~ ~ ~ 0.6 0.3

# キル
    kill @e[tag=SpreadMarker]
