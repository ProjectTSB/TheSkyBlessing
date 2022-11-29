#> asset:mob/0185.tutankhamen/tick/thunder/03.summon_thunder2
#
#
#
# @within function asset:mob/0185.tutankhamen/tick/thunder/02.summon_thunder1

#> Private
# @private
    #declare tag 55.ThunderTarget

# 最も近い一人をターゲットにする
    tag @p[gamemode=!spectator,distance=..32] add 55.ThunderTarget

# 前方拡散でAECを召喚
    execute at @p[tag=55.ThunderTarget,distance=..32] run summon marker ~ ~20 ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 6
    data modify storage lib: Argument.Spread set value 2d
    execute as @e[type=marker,tag=SpreadMarker,distance=..32] at @p[tag=55.ThunderTarget,distance=..32] positioned ~ ~20 ~ rotated ~ 90 run function lib:forward_spreader/circle
# 召喚
    execute at @p[tag=55.ThunderTarget,distance=..40] positioned ~ ~20 ~ facing entity @e[type=marker,tag=SpreadMarker] feet run summon area_effect_cloud ^ ^ ^20 {CustomNameVisible:0b,Particle:"block air",Duration:40,Tags:["Object","55.SkillThunderMaker"]}
# 演出
    execute at @p[tag=55.ThunderTarget,distance=..32] run playsound minecraft:entity.puffer_fish.death hostile @a ~ ~ ~ 0.6 0.3

# キル
    kill @e[tag=SpreadMarker]

# ターゲットTag削除
    tag @p[tag=55.ThunderTarget,distance=..32] remove 55.ThunderTarget