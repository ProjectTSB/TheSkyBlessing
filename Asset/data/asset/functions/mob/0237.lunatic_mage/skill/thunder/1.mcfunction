#> asset:mob/0237.lunatic_mage/skill/thunder/1
#
# 雷スキルのメイン処理
#
# @within function asset:mob/0237.lunatic_mage/tick/4.skill_branch

#> Private
# @private
    #declare tag TargetPlayer
    #declare tag 6L.ThunderSummonPoint

# ポーズ変更
    execute if entity @s[scores={6L.Tick=6}] run item replace entity @s armor.head with stick{CustomModelData:20200}

# 音
    execute if entity @s[scores={6L.Tick=6}] run playsound block.portal.trigger hostile @a[distance=..30] ~ ~ ~ 0.8 2 0

# パーティクル
    execute if entity @s[scores={6L.Tick=..24}] run particle dust 1 1 0 1.5 ~ ~1 ~ 0.4 0.5 0.4 0.3 3 force @a[distance=..20]
    execute if entity @s[scores={6L.Tick=..24}] positioned ~ ~2.4 ~ positioned ^-0.6 ^ ^0.4 run particle glow ~ ~ ~ 0 0 0 0.02 1

# 一度プレイヤーを二人指定し、その位置で雷の召喚地点となるAECを召喚する
    execute if entity @s[scores={6L.Tick=24}] run tag @a[gamemode=!spectator,distance=..50,sort=random,limit=2] add TargetPlayer
    execute if entity @s[scores={6L.Tick=24}] at @a[tag=TargetPlayer,distance=..50,limit=2] run summon area_effect_cloud ~ ~ ~ {Tags:["6L.ThunderSummonPoint"],Particle:"block air",Duration:21}

# ターゲットとなったプレイヤーの位置で、ルナティックメイジの方を見て5ブロック先に雷召喚地点のAECをワープさせる
    execute if entity @s[scores={6L.Tick=24}] at @a[tag=TargetPlayer,distance=..50,limit=2] facing entity @s eyes rotated ~ 0 run tp @e[type=area_effect_cloud,tag=6L.ThunderSummonPoint,distance=..0.01,sort=nearest,limit=1] ^ ^ ^5 ~180 0
    execute if entity @s[scores={6L.Tick=24}] run tag @a[tag=TargetPlayer,distance=..50,limit=2] remove TargetPlayer

# 1回目の雷
    execute if entity @s[scores={6L.Tick=25}] at @e[type=area_effect_cloud,tag=6L.ThunderSummonPoint,distance=..50,limit=2] positioned ~ ~0.5 ~ run function asset:mob/0237.lunatic_mage/skill/thunder/2.thunder

# 2回目
    execute if entity @s[scores={6L.Tick=30}] at @e[type=area_effect_cloud,tag=6L.ThunderSummonPoint,distance=..50,limit=2] positioned ~ ~0.5 ~ positioned ^ ^ ^5 run function asset:mob/0237.lunatic_mage/skill/thunder/2.thunder

# 3回目
    execute if entity @s[scores={6L.Tick=35}] at @e[type=area_effect_cloud,tag=6L.ThunderSummonPoint,distance=..50,limit=2] positioned ~ ~0.5 ~ positioned ^ ^ ^10 run function asset:mob/0237.lunatic_mage/skill/thunder/2.thunder

# ハード以上の場合、確定で2回目を行うように
    execute if predicate api:global_vars/difficulty/min/hard if entity @s[tag=!6L.SkillSecond,scores={6L.Tick=36}] run function asset:mob/0237.lunatic_mage/skill/thunder/3.second

# リセット
    execute if entity @s[scores={6L.Tick=41..}] run function asset:mob/0237.lunatic_mage/tick/5.reset