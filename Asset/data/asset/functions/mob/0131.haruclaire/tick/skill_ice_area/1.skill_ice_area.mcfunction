#> asset:mob/0131.haruclaire/tick/skill_ice_area/1.skill_ice_area
#
#
#
# @within function asset:mob/0131.haruclaire/tick/2.2.skill_active

# ポーズ
    execute if score @s 3N.Tick matches 1 run item replace entity @e[type=armor_stand,tag=3N.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stone{CustomModelData:20042}
    execute if score @s 3N.Tick matches 1 run item replace entity @e[type=armor_stand,tag=3N.ArmorStand,distance=..0.01,sort=nearest,limit=1] weapon with stone{CustomModelData:20037}
    execute if score @s 3N.Tick matches 1 run data modify entity @e[type=armor_stand,tag=3N.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.LeftArm set value [30f,360f,28f]
    execute if score @s 3N.Tick matches 1 run data modify entity @e[type=armor_stand,tag=3N.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [205f,44f,0f]


# タグを消す
    execute if score @s 3N.Tick matches 100 run tag @s remove 3N.SkillIceArea
# スコアを少し進めた状態に戻す
    execute if score @s 3N.Tick matches 100 run scoreboard players set @s 3N.Tick -30