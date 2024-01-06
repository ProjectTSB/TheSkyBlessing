#> asset:mob/0078.messenger_of_thunder/skill/1/1
#
# スキル1のメイン処理
#
# @within function asset:mob/0078.messenger_of_thunder/tick/4.skill_branch

#> Private
# @private
    #declare score_holder $Temp

# 予備動作
    execute if entity @s[scores={26.Tick=0}] run playsound entity.zombie_villager.converted hostile @a[distance=..50] ~ ~ ~ 2 1.5 1

# AECを召喚 ハードだと個数+5個 ハードで体力半分以下で+5個
    execute if entity @s[scores={26.Tick=0}] at @p[gamemode=!spectator] run function asset:mob/0078.messenger_of_thunder/skill/1/2.thunder_point1
    execute if entity @s[scores={26.Tick=0}] if predicate api:global_vars/difficulty/min/hard at @p[gamemode=!spectator] run function asset:mob/0078.messenger_of_thunder/skill/1/2.thunder_point1
    execute if entity @s[tag=26.HPLess50Per,scores={26.Tick=0}] if predicate api:global_vars/difficulty/min/hard at @p[gamemode=!spectator] run function asset:mob/0078.messenger_of_thunder/skill/1/2.thunder_point1

# 演出
    scoreboard players operation $Temp Temporary = @s 26.Tick
    scoreboard players operation $Temp Temporary %= $3 Const
    execute if score $Temp Temporary matches 0 at @e[type=area_effect_cloud,tag=26.SkillThunderMarker,distance=..60,limit=15] positioned ~ ~0.3 ~ run function asset:mob/0078.messenger_of_thunder/skill/1/4.vfx
    scoreboard players reset $Temp Temporary

# AECの位置に雷を落とす
    execute if entity @s[scores={26.Tick=22}] at @e[type=area_effect_cloud,tag=26.SkillThunderMarker,distance=..60,sort=random,limit=3] run function asset:mob/0078.messenger_of_thunder/skill/1/5.thunder_attack
    execute if entity @s[scores={26.Tick=24}] at @e[type=area_effect_cloud,tag=26.SkillThunderMarker,distance=..60,sort=random,limit=3] run function asset:mob/0078.messenger_of_thunder/skill/1/5.thunder_attack
    execute if entity @s[scores={26.Tick=26}] at @e[type=area_effect_cloud,tag=26.SkillThunderMarker,distance=..60,sort=random,limit=3] run function asset:mob/0078.messenger_of_thunder/skill/1/5.thunder_attack
    execute if entity @s[scores={26.Tick=28}] at @e[type=area_effect_cloud,tag=26.SkillThunderMarker,distance=..60,sort=random,limit=3] run function asset:mob/0078.messenger_of_thunder/skill/1/5.thunder_attack
    execute if entity @s[scores={26.Tick=30}] at @e[type=area_effect_cloud,tag=26.SkillThunderMarker,distance=..60,sort=random,limit=3] run function asset:mob/0078.messenger_of_thunder/skill/1/5.thunder_attack

# リセット
    execute if entity @s[scores={26.Tick=30..}] run function asset:mob/0078.messenger_of_thunder/tick/reset