#> asset:mob/0237.lunatic_mage/skill/thunder/01.manage
#
# 雷スキルを管理します
#
# @within function asset:mob/0237.lunatic_mage/tick/04.skill_branch

#> Private
# @private
    #declare tag 6J.ThunderSummonPoint

# 音
    execute if score @s 6J.SkillTick matches 2 run playsound block.portal.trigger hostile @a ~ ~ ~ 0.8 2 0

# パーティクル
    execute if score @s 6J.SkillTick matches ..20 run particle dust 1 1 0 1.5 ~ ~1.2 ~ 1 0.5 1 0 5 normal @a

# 召喚地点となるAECを召喚
    execute if score @s 6J.SkillTick matches 20 run summon area_effect_cloud ~ ~ ~ {Tags:["6J.ThunderSummonPoint"],Particle:"block air",Duration:42}
    execute if score @s 6J.SkillTick matches 20 as @p[gamemode=!spectator,distance=..32] facing entity @s eyes rotated ~ 0 positioned as @s run tp @e[type=area_effect_cloud,tag=6J.ThunderSummonPoint,distance=..32,limit=1] ^ ^ ^-5 ~ 0

# 1回目の雷
    execute if score @s 6J.SkillTick matches 21 at @e[type=area_effect_cloud,tag=6J.ThunderSummonPoint,distance=..32,limit=1] positioned ~ ~0.5 ~ run function asset:mob/0237.lunatic_mage/skill/thunder/02.thunder

# 2回目
    execute if score @s 6J.SkillTick matches 31 at @e[type=area_effect_cloud,tag=6J.ThunderSummonPoint,distance=..32,limit=1] positioned ~ ~0.5 ~ positioned ^ ^ ^5 run function asset:mob/0237.lunatic_mage/skill/thunder/02.thunder

# 3回目
    execute if score @s 6J.SkillTick matches 41 at @e[type=area_effect_cloud,tag=6J.ThunderSummonPoint,distance=..32,limit=1] positioned ~ ~0.5 ~ positioned ^ ^ ^10 run function asset:mob/0237.lunatic_mage/skill/thunder/02.thunder

# リセット
    execute if score @s 6J.SkillTick matches 61.. run function asset:mob/0237.lunatic_mage/tick/05.reset