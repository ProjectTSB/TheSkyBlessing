#> asset:mob/0131.haruclaire/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0131.haruclaire/death/1.trigger


# 死亡アニメーションをするためのアマスタを召喚する
    summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["3N.ArmorStandDeath","3N.ArmorStandThis","Object","Uninterferable"],Pose:{LeftArm:[0f,0f,340f],RightArm:[0f,0f,20f]},HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:20056}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:20055}}],ArmorItems:[{},{},{},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:20058}}]}
# アマスタに位置をあわせる
    execute as @e[type=armor_stand,tag=3N.ArmorStand,distance=..3,sort=nearest,limit=1] at @s run tp @e[type=armor_stand,tag=3N.ArmorStandThis,distance=..3] @s
# タグを消す
    tag @e[type=armor_stand,tag=3N.ArmorStandThis] remove 3N.ArmorStandThis

# もともといるアマスタには死んでもらう(複数召喚されてる場合、巻き込まれても大丈夫)
    kill @e[type=armor_stand,tag=3N.ArmorStand]

# スケジュールループを開始する
    schedule function asset:mob/0131.haruclaire/death/3.animation_schedule_loop 1t replace