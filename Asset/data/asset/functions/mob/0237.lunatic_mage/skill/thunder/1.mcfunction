#> asset:mob/0237.lunatic_mage/skill/thunder/1
#
# 雷スキルを管理します
#
# @within function asset:mob/0237.lunatic_mage/tick/4.skill_branch

#> Private
# @private
    #declare tag 6L.ThunderSummonPoint

# 音
    execute if entity @s[scores={6L.Tick=2}] run playsound block.portal.trigger hostile @a ~ ~ ~ 0.8 2 0

# パーティクル
    execute if entity @s[scores={6L.Tick=..20}] run particle dust 1 1 0 1.5 ~ ~1.2 ~ 1 0.5 1 0 5 normal @a

# 召喚地点となるAECを召喚
    execute if entity @s[scores={6L.Tick=20}] run summon area_effect_cloud ~ ~ ~ {Tags:["6L.ThunderSummonPoint"],Particle:"block air",Duration:42}
    execute if entity @s[scores={6L.Tick=20}] positioned as @p[gamemode=!spectator,distance=..32] facing entity @s eyes rotated ~ 0 run tp @e[type=area_effect_cloud,tag=6L.ThunderSummonPoint,distance=..32,limit=1] ^ ^ ^5 ~180 0

# 1回目の雷
    execute if entity @s[scores={6L.Tick=21}] at @e[type=area_effect_cloud,tag=6L.ThunderSummonPoint,distance=..32,limit=1] positioned ~ ~0.5 ~ run function asset:mob/0237.lunatic_mage/skill/thunder/2.thunder

# 2回目
    execute if entity @s[scores={6L.Tick=26}] at @e[type=area_effect_cloud,tag=6L.ThunderSummonPoint,distance=..32,limit=1] positioned ~ ~0.5 ~ positioned ^ ^ ^5 run function asset:mob/0237.lunatic_mage/skill/thunder/2.thunder

# 3回目
    execute if entity @s[scores={6L.Tick=31}] at @e[type=area_effect_cloud,tag=6L.ThunderSummonPoint,distance=..32,limit=1] positioned ~ ~0.5 ~ positioned ^ ^ ^10 run function asset:mob/0237.lunatic_mage/skill/thunder/2.thunder

# リセット
    execute if entity @s[scores={6L.Tick=41..}] run function asset:mob/0237.lunatic_mage/tick/5.reset