#> asset:mob/0129.lexiel/tick/skill_thunder/1.skill_thunder
#
# 雷を落とす
#
# @within function asset:mob/0129.lexiel/tick/2.3.skill_active


# ポーズ
    execute if score @s 3L.Tick matches 0 run item replace entity @e[type=armor_stand,tag=3L.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stone{CustomModelData:20042}
    execute if score @s 3L.Tick matches 0 run item replace entity @e[type=armor_stand,tag=3L.ArmorStand,distance=..0.01,sort=nearest,limit=1] weapon with stone{CustomModelData:20037}
    execute if score @s 3L.Tick matches 0 run data modify entity @e[type=armor_stand,tag=3L.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.LeftArm set value [30f,360f,28f]
    execute if score @s 3L.Tick matches 0 run data modify entity @e[type=armor_stand,tag=3L.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [0f,0f,90f]

# 雷を落とすAECを5個呼ぶ
    execute if score @s 3L.Tick matches 0 run function asset:mob/0129.lexiel/tick/skill_thunder/2.skill_thunder_summon
    execute if score @s 3L.Tick matches 0 run function asset:mob/0129.lexiel/tick/skill_thunder/2.skill_thunder_summon
    execute if score @s 3L.Tick matches 0 run function asset:mob/0129.lexiel/tick/skill_thunder/2.skill_thunder_summon
    execute if score @s 3L.Tick matches 0 run function asset:mob/0129.lexiel/tick/skill_thunder/2.skill_thunder_summon
    execute if score @s 3L.Tick matches 0 run function asset:mob/0129.lexiel/tick/skill_thunder/2.skill_thunder_summon
# 攻撃
    execute if score @s 3L.Tick matches 19 at @e[type=area_effect_cloud,tag=3L.SkillThunderMaker,sort=random,limit=1] run function asset:mob/0129.lexiel/tick/skill_thunder/3.skill_thunder_particle_and_damage
    execute if score @s 3L.Tick matches 21 at @e[type=area_effect_cloud,tag=3L.SkillThunderMaker,sort=random,limit=1] run function asset:mob/0129.lexiel/tick/skill_thunder/3.skill_thunder_particle_and_damage
    execute if score @s 3L.Tick matches 23 at @e[type=area_effect_cloud,tag=3L.SkillThunderMaker,sort=random,limit=1] run function asset:mob/0129.lexiel/tick/skill_thunder/3.skill_thunder_particle_and_damage
    execute if score @s 3L.Tick matches 25 at @e[type=area_effect_cloud,tag=3L.SkillThunderMaker,sort=random,limit=1] run function asset:mob/0129.lexiel/tick/skill_thunder/3.skill_thunder_particle_and_damage
    execute if score @s 3L.Tick matches 27 at @e[type=area_effect_cloud,tag=3L.SkillThunderMaker,sort=random,limit=1] run function asset:mob/0129.lexiel/tick/skill_thunder/3.skill_thunder_particle_and_damage

# リセット
    execute if score @s 3L.Tick matches 45 run function asset:mob/0129.lexiel/tick/reset