#> asset:mob/0131.haruclaire/tick/skill_ice_pillar/1.skill_ice_pillar
#
#
#
# @within function asset:mob/0131.haruclaire/tick/2.2.skill_active

# ポーズ
    execute if score @s 3N.Tick matches 1 run item replace entity @e[type=armor_stand,tag=3N.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stone{CustomModelData:20060}
    execute if score @s 3N.Tick matches 1 run item replace entity @e[type=armor_stand,tag=3N.ArmorStand,distance=..0.01,sort=nearest,limit=1] weapon with stone{CustomModelData:20057}
    execute if score @s 3N.Tick matches 1 run data modify entity @e[type=armor_stand,tag=3N.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.LeftArm set value [30f,360f,28f]
    execute if score @s 3N.Tick matches 1 run data modify entity @e[type=armor_stand,tag=3N.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [0f,0f,90f]

# 氷柱を召喚するAECを召喚
    execute if score @s 3N.Tick matches 10 run function asset:mob/0131.haruclaire/tick/skill_ice_pillar/2.skill_ice_pillar_aec_summon
    execute if score @s 3N.Tick matches 15 run function asset:mob/0131.haruclaire/tick/skill_ice_pillar/2.skill_ice_pillar_aec_summon
    execute if score @s 3N.Tick matches 20 run function asset:mob/0131.haruclaire/tick/skill_ice_pillar/2.skill_ice_pillar_aec_summon
    execute if score @s 3N.Tick matches 25 run function asset:mob/0131.haruclaire/tick/skill_ice_pillar/2.skill_ice_pillar_aec_summon
    execute if score @s 3N.Tick matches 30 run function asset:mob/0131.haruclaire/tick/skill_ice_pillar/2.skill_ice_pillar_aec_summon

# 氷柱を召喚
    execute if score @s 3N.Tick matches 45..50 at @e[type=area_effect_cloud,tag=3N.SkillPillarMaker,distance=..30,sort=random,limit=5] run function asset:mob/0131.haruclaire/tick/skill_ice_pillar/3.skill_ice_pillar_attack


# タグを消す
    execute if score @s 3N.Tick matches 60 run tag @s remove 3N.SkillIcePillar
# スコアを少し進めた状態に戻す
    execute if score @s 3N.Tick matches 60 run scoreboard players set @s 3N.Tick -30