#> asset:mob/0284.lexiel/tick/skill/thunder/1.thunder
#
#
#
# @within function asset:mob/0284.lexiel/tick/4.skill_active

# ポーズ
    execute if score @s 7W.Tick matches 0 as @e[type=armor_stand,tag=7W.ModelChangeTarget,tag=7W.ModelBody,distance=..0.5,sort=nearest,limit=1] run function asset:mob/0284.lexiel/tick/skill/thunder/2.first_tick

    execute if score @s 7W.Tick matches 5..20 run function asset:mob/0284.lexiel/tick/skill/thunder/summon_thunder


    execute if score @s 7W.Tick matches 20 run data modify entity @e[type=armor_stand,tag=7W.ModelChangeTarget,tag=7W.ModelBody,distance=..0.5,sort=nearest,limit=1] Pose.RightArm set value [0f,92f,88f]
    execute if score @s 7W.Tick matches 20 run tp @e[type=armor_stand,tag=7W.ModelChangeTarget,tag=7W.ModelBody,distance=..0.5,sort=nearest,limit=1] ~ ~ ~ ~-80 ~
    execute if score @s 7W.Tick matches 20 run item replace entity @e[type=armor_stand,tag=7W.ModelChangeTarget,tag=7W.ModelBody,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20291}

    execute if score @s 7W.Tick matches 40 as @e[type=area_effect_cloud,tag=7W.SkillThunderMaker,distance=..100,sort=random,limit=5] at @s run function asset:mob/0284.lexiel/tick/skill/thunder/thunder_damage
    execute if score @s 7W.Tick matches 44 as @e[type=area_effect_cloud,tag=7W.SkillThunderMaker,distance=..100,sort=random,limit=5] at @s run function asset:mob/0284.lexiel/tick/skill/thunder/thunder_damage
    execute if score @s 7W.Tick matches 48 as @e[type=area_effect_cloud,tag=7W.SkillThunderMaker,distance=..100,sort=random,limit=5] at @s run function asset:mob/0284.lexiel/tick/skill/thunder/thunder_damage

# 攻撃判定
# リセット
    execute if score @s 7W.Tick matches 60 run function asset:mob/0284.lexiel/tick/reset