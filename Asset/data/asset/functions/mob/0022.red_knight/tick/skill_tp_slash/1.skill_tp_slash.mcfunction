#> asset:mob/0022.red_knight/tick/skill_tp_slash/1.skill_tp_slash
#
#
#
# @within function asset:mob/0022.red_knight/tick/2.3.skill_active

# アマスタにタグを付与
    execute if score @s M.Tick matches 4 run tag @e[type=armor_stand,tag=M.ArmorStand,distance=..0.01,sort=nearest,limit=1] add M.ArmorStandThis
# プレイヤーの顔面TP
    execute if score @s M.Tick matches 4 run tp @s @p[gamemode=!spectator,distance=..100]
    execute if score @s M.Tick matches 4 at @s rotated ~ 0 if entity @a[distance=..100] run tp @s ^ ^ ^1.8 facing entity @p[gamemode=!spectator,distance=..100]
# アマスタを持ってきてタグを消す
    execute if score @s M.Tick matches 4 run tp @e[type=armor_stand,tag=M.ArmorStandThis,sort=nearest,limit=1] @s
    execute if score @s M.Tick matches 4 run tag @e[type=armor_stand,tag=M.ArmorStandThis,sort=nearest,limit=1] remove M.ArmorStandThis

# ポーズ
    execute if score @s M.Tick matches 5 run data modify entity @e[type=armor_stand,tag=M.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [0f,213f,135f]
    execute if score @s M.Tick matches 5 run data modify entity @e[type=armor_stand,tag=M.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.Head set value [0f,0f,0f]
    execute if score @s M.Tick matches 15 run data modify entity @e[type=armor_stand,tag=M.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [173f,213f,121f]

# 斬撃演出
    execute if score @s M.Tick matches 15 positioned ^0.6 ^ ^ run function asset:mob/0022.red_knight/tick/particle_1
    execute if score @s M.Tick matches 15 run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 2

# ダメージ発生
    execute if score @s M.Tick matches 15 positioned ^ ^ ^1 run function asset:mob/0022.red_knight/tick/skill_tp_slash/2.skill_tp_slash_damage

# 二連撃目
    execute if score @s M.Tick matches 25 run data modify entity @e[type=armor_stand,tag=M.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [215f,0f,94f]
    execute if score @s M.Tick matches 28 run data modify entity @e[type=armor_stand,tag=M.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [360f,0f,88f]

# 斬撃演出
    execute if score @s M.Tick matches 28 positioned ^ ^0.6 ^ run function asset:mob/0022.red_knight/tick/particle_3
    execute if score @s M.Tick matches 28 run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 2

# ダメージ発生
    execute if score @s M.Tick matches 28 positioned ^ ^ ^1 run function asset:mob/0022.red_knight/tick/skill_tp_slash/2.skill_tp_slash_damage

# 三連撃目
    execute if score @s M.Tick matches 38 run data modify entity @e[type=armor_stand,tag=M.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [0f,177f,36f]
    execute if score @s M.Tick matches 41 run data modify entity @e[type=armor_stand,tag=M.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [346f,337f,253f]

# 斬撃演出
    execute if score @s M.Tick matches 41 positioned ^-0.6 ^ ^ run function asset:mob/0022.red_knight/tick/particle_2
    execute if score @s M.Tick matches 41 run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 2

# ダメージ発生
    execute if score @s M.Tick matches 41 positioned ^ ^ ^1 run function asset:mob/0022.red_knight/tick/skill_tp_slash/2.skill_tp_slash_damage

# 共通リセットへ
    execute if score @s M.Tick matches 50 run function asset:mob/0022.red_knight/tick/reset