#> asset:mob/0022.red_knight/tick/2.4.skill_sword
#
# 剣スキル
#
# @within function asset:mob/0022.red_knight/tick/2.3.skill_active

# ポーズ

    execute if score @s M.Tick matches 85 run data modify entity @e[type=armor_stand,tag=M.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [0f,213f,135f]
    execute if score @s M.Tick matches 85 run data modify entity @e[type=armor_stand,tag=M.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.Head set value [0f,0f,0f]
    execute if score @s M.Tick matches 95 run data modify entity @e[type=armor_stand,tag=M.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [173f,213f,121f]

# テレポート
# アマスタにタグを付与
    execute if score @s M.Tick matches 95 run tag @e[type=armor_stand,tag=M.ArmorStand,distance=..0.01,sort=nearest,limit=1] add M.ArmorStandThis
# 前進
    execute if score @s M.Tick matches 95 run tp ^ ^ ^4
# アマスタを持ってきてタグを消す
    execute if score @s M.Tick matches 95 run tp @e[type=armor_stand,tag=M.ArmorStandThis,sort=nearest,limit=1] @s
    execute if score @s M.Tick matches 95 run tag @e[type=armor_stand,tag=M.ArmorStandThis,sort=nearest,limit=1] remove M.ArmorStandThis

# 斬撃演出
    execute if score @s M.Tick matches 95 positioned ^0.6 ^ ^ run function asset:mob/0022.red_knight/tick/particle_1
    execute if score @s M.Tick matches 95 run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 2
# ダメージ発生
    execute if score @s M.Tick matches 95 positioned ^ ^ ^1 run function asset:mob/0022.red_knight/tick/2.5.skill_sword_damage

# 二連撃目
# ポーズ
    execute if score @s M.Tick matches 97 run data modify entity @e[type=armor_stand,tag=M.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [205f,360f,58f]
    execute if score @s M.Tick matches 100 run data modify entity @e[type=armor_stand,tag=M.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [360f,360f,58f]
    execute if score @s M.Tick matches 100 run data modify entity @e[type=armor_stand,tag=M.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.LeftLeg set value [0f,0f,340f]
    execute if score @s M.Tick matches 100 run data modify entity @e[type=armor_stand,tag=M.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightLeg set value [0f,0f,22f]

# テレポート
# アマスタにタグを付与
    execute if score @s M.Tick matches 100 run tag @e[type=armor_stand,tag=M.ArmorStand,distance=..0.01,sort=nearest,limit=1] add M.ArmorStandThis
# 前進
    execute if score @s M.Tick matches 100 run tp ^ ^ ^4
# アマスタを持ってきてタグを消す
    execute if score @s M.Tick matches 100 run tp @e[type=armor_stand,tag=M.ArmorStandThis,sort=nearest,limit=1] @s
    execute if score @s M.Tick matches 100 run tag @e[type=armor_stand,tag=M.ArmorStandThis,sort=nearest,limit=1] remove M.ArmorStandThis

# 斬撃演出
    execute if score @s M.Tick matches 100 positioned ^-0.6 ^ ^ run function asset:mob/0022.red_knight/tick/particle_2
    execute if score @s M.Tick matches 100 run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 2
# ダメージ発生
    execute if score @s M.Tick matches 100 positioned ^ ^ ^5 run function asset:mob/0022.red_knight/tick/2.5.skill_sword_damage


# 共通リセットへ
    execute if score @s M.Tick matches 115 run function asset:mob/0022.red_knight/tick/reset