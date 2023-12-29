#> asset:mob/0078.messenger_of_thunder/skill/1/1
#
#
#
# @within function asset:mob/0078.messenger_of_thunder/tick/4.skill_branch

#> Private
# @private
    #declare score_holder $Temp

# AECを召喚 ハードだと個数2倍
    execute if entity @s[scores={26.Tick=0}] at @p[gamemode=!spectator] run function asset:mob/0078.messenger_of_thunder/skill/1/2.thunder_point1
    execute if entity @s[scores={26.Tick=0}] if predicate api:global_vars/difficulty/min/hard at @p[gamemode=!spectator] run function asset:mob/0078.messenger_of_thunder/skill/1/2.thunder_point1

# 演出
    scoreboard players operation $Temp Temporary = @s 26.Tick
    scoreboard players operation $Temp Temporary %= $3 Const
    execute if score $Temp Temporary matches 0 at @e[type=area_effect_cloud,tag=26.SkillThunderMarker,distance=..60,limit=5] positioned ~ ~0.3 ~ run function asset:mob/0078.messenger_of_thunder/skill/1/4.vfx
    scoreboard players reset $Temp Temporary

# AECの位置に雷を落とす
    execute if entity @s[scores={26.Tick=22}] at @e[type=area_effect_cloud,tag=26.SkillThunderMarker,distance=..60,sort=random,limit=1] run function asset:mob/0078.messenger_of_thunder/skill/1/5.thunder_attack
    execute if entity @s[scores={26.Tick=24}] at @e[type=area_effect_cloud,tag=26.SkillThunderMarker,distance=..60,sort=random,limit=1] run function asset:mob/0078.messenger_of_thunder/skill/1/5.thunder_attack
    execute if entity @s[scores={26.Tick=26}] at @e[type=area_effect_cloud,tag=26.SkillThunderMarker,distance=..60,sort=random,limit=1] run function asset:mob/0078.messenger_of_thunder/skill/1/5.thunder_attack
    execute if entity @s[scores={26.Tick=28}] at @e[type=area_effect_cloud,tag=26.SkillThunderMarker,distance=..60,sort=random,limit=1] run function asset:mob/0078.messenger_of_thunder/skill/1/5.thunder_attack
    execute if entity @s[scores={26.Tick=30}] at @e[type=area_effect_cloud,tag=26.SkillThunderMarker,distance=..60,sort=random,limit=1] run function asset:mob/0078.messenger_of_thunder/skill/1/5.thunder_attack

# リセット
    execute if entity @s[scores={26.Tick=30..}] run function asset:mob/0078.messenger_of_thunder/tick/reset