#> asset:mob/0284.lexiel/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0284.lexiel/death/1.trigger


# 死亡アニメーションをするためのアマスタを召喚する
    summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["7W.ArmorStandDeath","7W.ArmorStandThis","Object","Uninterferable"],Pose:{LeftArm:[0f,0f,340f],RightArm:[0f,0f,20f]},HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:20035}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:20038}}],ArmorItems:[{},{},{},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:20043}}]}
# アマスタに位置をあわせる
    execute as @e[type=armor_stand,tag=7W.ArmorStandDeath,distance=..3,sort=nearest,limit=1] at @s run tp @s @e[type=armor_stand,tag=7W.Model,distance=..3,sort=nearest,limit=1]
# タグを消す
    tag @e[type=armor_stand,tag=7W.ArmorStandThis] remove 7W.ArmorStandThis

# もともといるアマスタには死んでもらう(複数召喚されてる場合、巻き込まれても大丈夫)
    kill @e[type=armor_stand,tag=7W.Model]
    kill @e[type=snowball,tag=7W.ModelCore]

# スケジュールループを開始する
    schedule function asset:mob/0284.lexiel/death/2.1.death_animation 1t