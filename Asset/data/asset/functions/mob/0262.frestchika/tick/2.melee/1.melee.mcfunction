#> asset:mob/0262.frestchika/tick/2.melee/1.melee
#
#
#
# @within function asset:mob/0262.frestchika/tick/4.skill_active

# 最初に実行するの
    execute if score @s 7A.Tick matches 0 as @e[type=armor_stand,tag=7A.ArmorStand,distance=..0.01,sort=nearest,limit=1] run function asset:mob/0262.frestchika/tick/2.melee/2.first_tick

# 突進をしてあたったらスコアを飛ばす
    execute if score @s 7A.Tick matches 10..13 run function asset:mob/0262.frestchika/tick/2.melee/3.tackle
    execute if score @s 7A.Tick matches 10..13 at @s run function asset:mob/0262.frestchika/tick/2.melee/3.tackle
    execute if score @s 7A.Tick matches 10..13 at @s run function asset:mob/0262.frestchika/tick/2.melee/3.tackle
# 演出
    execute if score @s 7A.Tick matches 10 run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 1 0.7
# 向き転換
    execute if score @s 7A.Tick matches 15 facing entity @p feet run function asset:mob/0262.frestchika/tick/move/teleport
# 再突進
    execute if score @s 7A.Tick matches 20..23 at @s run function asset:mob/0262.frestchika/tick/2.melee/3.tackle
    execute if score @s 7A.Tick matches 20..23 at @s run function asset:mob/0262.frestchika/tick/2.melee/3.tackle
    execute if score @s 7A.Tick matches 20..23 at @s run function asset:mob/0262.frestchika/tick/2.melee/3.tackle
# 演出
    execute if score @s 7A.Tick matches 20 run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 1 0.7
# 突進で見つからなかった場合、スコアを飛ばす
    execute if score @s 7A.Tick matches 41 run scoreboard players set @s 7A.Tick 2000

# 突進でプレイヤーが見つかってスコアが飛んだ先
    execute if score @s 7A.Tick matches 1001 positioned ^ ^ ^1 run function asset:mob/0262.frestchika/tick/2.melee/4.slash
    execute if score @s 7A.Tick matches 1001 run item replace entity @e[type=armor_stand,tag=7A.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stick{CustomModelData:20147}
    execute if score @s 7A.Tick matches 1001 run data modify entity @e[type=armor_stand,tag=7A.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [197f,197f,296f]

    execute if score @s 7A.Tick matches 1004 facing entity @p feet run function asset:mob/0262.frestchika/tick/move/teleport
    execute if score @s 7A.Tick matches 1004 run data modify entity @e[type=armor_stand,tag=7A.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [201f,0f,314f]
    execute if score @s 7A.Tick matches 1006 run data modify entity @e[type=armor_stand,tag=7A.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [332f,0f,302f]
    execute if score @s 7A.Tick matches 1006 positioned ^ ^ ^1 run function asset:mob/0262.frestchika/tick/2.melee/4.slash
    execute if score @s 7A.Tick matches 1006 at @s rotated ~-40 ~ run function asset:mob/0262.frestchika/tick/move/teleport

    execute if score @s 7A.Tick matches 1009 run data modify entity @e[type=armor_stand,tag=7A.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [34f,163f,302f]
    execute if score @s 7A.Tick matches 1012 run data modify entity @e[type=armor_stand,tag=7A.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [56f,0f,74f]
    execute if score @s 7A.Tick matches 1012 at @s rotated ~40 ~ run function asset:mob/0262.frestchika/tick/move/teleport
    execute if score @s 7A.Tick matches 1012 at @s positioned ^ ^ ^1 run function asset:mob/0262.frestchika/tick/2.melee/4.slash

    execute if score @s 7A.Tick matches 1020 run scoreboard players set @s 7A.Tick 2000
# 共通リセット
    execute if score @s 7A.Tick matches 2000 at @s run function asset:mob/0262.frestchika/tick/reset