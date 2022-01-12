#> asset:mob/0237.lunatic_mage/skill/thunder/03.activate_skill
#
# ここで技を起動する
#
# @within function asset:mob/0237.lunatic_mage/skill/thunder/01.manage

#> Private
# @private
    #declare tag 6J.ThunderSummonPoint

# 召喚地点となるAECを召喚
    execute if score @s 6J.SkillTick matches 20 run summon area_effect_cloud ~ ~ ~ {Tags:["6J.ThunderSummonPoint"],Particle:"block air",Duration:42}
    execute if score @s 6J.SkillTick matches 20 at @p[gamemode=!spectator,distance=..32] rotated ~ 0 positioned ^ ^ ^5 rotated ~180 0 run tp @e[type=area_effect_cloud,tag=6J.ThunderSummonPoint,distance=..32,limit=1] ~ ~ ~ ~ 0

# AEC地点で連続で雷を召喚する
    execute at @e[type=area_effect_cloud,tag=6J.ThunderSummonPoint,distance=..32,limit=1] positioned ~ ~0.5 ~ run function asset:mob/0237.lunatic_mage/skill/thunder/04.fall_thunder