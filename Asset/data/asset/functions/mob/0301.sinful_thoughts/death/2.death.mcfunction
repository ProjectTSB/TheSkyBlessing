#> asset:mob/0301.sinful_thoughts/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0301.sinful_thoughts/death/1.trigger

# 死亡アニメーションをするためのアマスタを召喚する
    summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["8D.ArmorStandDeath","8D.ArmorStandThis","Object","Uninterferable"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,0f,0f]},HandItems:[{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20254}},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20252}}],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20256}}]}
# アマスタに位置をあわせる
    execute at @e[type=armor_stand,tag=8D.ArmorStand,distance=..3,sort=nearest,limit=1] run tp @e[type=armor_stand,tag=8D.ArmorStandThis,distance=..3] @s
# タグを消す
    tag @e[type=armor_stand,tag=8D.ArmorStandThis] remove 8D.ArmorStandThis

# もともといるアマスタには死んでもらう
    kill @e[type=armor_stand,tag=8D.ArmorStand]

# スケジュールループを開始する
    schedule function asset:mob/0301.sinful_thoughts/death/schedule 1t replace