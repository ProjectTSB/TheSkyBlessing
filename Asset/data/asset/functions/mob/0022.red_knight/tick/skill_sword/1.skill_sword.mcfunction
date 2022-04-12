#> asset:mob/0022.red_knight/tick/skill_sword/1.skill_sword
#
# 剣スキル
#
# @within function asset:mob/0022.red_knight/tick/2.3.skill_active

# ポーズ
    execute if score @s M.Tick matches 5 run data modify entity @e[type=armor_stand,tag=M.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [0f,213f,135f]
    execute if score @s M.Tick matches 5 run data modify entity @e[type=armor_stand,tag=M.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.Head set value [0f,0f,0f]
    execute if score @s M.Tick matches 15 run data modify entity @e[type=armor_stand,tag=M.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [173f,213f,121f]

# テレポート
    execute if score @s M.Tick matches 15 run function asset:mob/0022.red_knight/tick/skill_sword/3.skill_sword_teleport

# 斬撃演出
    execute if score @s M.Tick matches 15 positioned ^0.6 ^ ^ run function asset:mob/0022.red_knight/tick/particle_1
    execute if score @s M.Tick matches 15 run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 2
# ダメージ発生
    execute if score @s M.Tick matches 15 positioned ^ ^ ^0.6 run function asset:mob/0022.red_knight/tick/skill_sword/2.skill_sword_damage

# 二連撃目
# ポーズ
    execute if score @s M.Tick matches 17 run data modify entity @e[type=armor_stand,tag=M.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [205f,360f,58f]
    execute if score @s M.Tick matches 20 run data modify entity @e[type=armor_stand,tag=M.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [360f,360f,58f]
    execute if score @s M.Tick matches 20 run data modify entity @e[type=armor_stand,tag=M.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.LeftLeg set value [0f,0f,340f]
    execute if score @s M.Tick matches 20 run data modify entity @e[type=armor_stand,tag=M.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightLeg set value [0f,0f,22f]

# テレポート
    execute if score @s M.Tick matches 20 run function asset:mob/0022.red_knight/tick/skill_sword/3.skill_sword_teleport

# 斬撃演出
    execute if score @s M.Tick matches 20 positioned ^-0.6 ^ ^ run function asset:mob/0022.red_knight/tick/particle_2
    execute if score @s M.Tick matches 20 run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 2
# ダメージ発生
    execute if score @s M.Tick matches 20 positioned ^ ^ ^0.6 run function asset:mob/0022.red_knight/tick/skill_sword/2.skill_sword_damage


# 共通リセットへ
    execute if score @s M.Tick matches 45 run function asset:mob/0022.red_knight/tick/reset