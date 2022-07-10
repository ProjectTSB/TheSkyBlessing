#> asset:mob/1004.tultaria/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/1004.tultaria/death/1.trigger


# 演出
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 4 0.7
    playsound minecraft:block.amethyst_cluster.break hostile @a ~ ~ ~ 4 1.5

# 死亡アニメーションをするためのアマスタを召喚する
    summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["RW.DeathAnimation","RW.DeathInit","Object","Uninterferable"],Pose:{LeftArm:[-20f,0f,-10f],RightArm:[-90f,0f,30f],Head:[-25f,0.1f,0.1f]},DisabledSlots:4144959,HandItems:[{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20068}},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20068}}],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20076}}]}

# アマスタに位置をあわせる
    execute as @e[type=armor_stand,tag=RW.ArmorStand,distance=..3,sort=nearest,limit=1] at @s run tp @e[type=armor_stand,tag=RW.DeathInit,distance=..3] ~ ~ ~ ~ ~

# タグを消す
    tag @e[type=armor_stand,tag=RW.DeathInit] remove RW.DeathInit

# もともといるアマスタには死んでもらう(複数召喚されてる場合、もし巻き込まれても大丈夫)
    kill @e[type=armor_stand,tag=RW.ArmorStand]

# マーカー消す
    kill @e[type=marker,tag=RW.XYZ,limit=1]

# スケジュールループを開始する
    schedule function asset:mob/1004.tultaria/death/3.death_tick 1t