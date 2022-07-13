#> asset:mob/0129.lexiel/death/2.2.death_animation_pose
#
# アニメーションをさせる部分。メインといっても過言ではない
#
# @within function asset:mob/0129.lexiel/death/2.1.death_animation

# スコアを増やしていく
    scoreboard players add @s 3L.Tick 1

# 以下アニメーション

# 少しずつ手を上げる
    execute if score @s 3L.Tick matches 1 run data modify entity @s Pose.LeftArm set value [0f,0f,330f]
    execute if score @s 3L.Tick matches 1 run data modify entity @s Pose.RightArm set value [0f,0f,30f]

    execute if score @s 3L.Tick matches 5 run data modify entity @s Pose.LeftArm set value [0f,0f,320f]
    execute if score @s 3L.Tick matches 5 run data modify entity @s Pose.RightArm set value [0f,0f,60f]

    execute if score @s 3L.Tick matches 9 run data modify entity @s Pose.LeftArm set value [0f,0f,310f]
    execute if score @s 3L.Tick matches 9 run data modify entity @s Pose.RightArm set value [0f,0f,50f]

    execute if score @s 3L.Tick matches 13 run data modify entity @s Pose.LeftArm set value [0f,0f,300f]
    execute if score @s 3L.Tick matches 13 run data modify entity @s Pose.RightArm set value [0f,0f,60f]

    execute if score @s 3L.Tick matches 17 run data modify entity @s Pose.LeftArm set value [0f,0f,290f]
    execute if score @s 3L.Tick matches 17 run data modify entity @s Pose.RightArm set value [0f,0f,70f]

    execute if score @s 3L.Tick matches 21 run data modify entity @s Pose.LeftArm set value [0f,0f,280f]
    execute if score @s 3L.Tick matches 21 run data modify entity @s Pose.RightArm set value [0f,0f,80f]

    execute if score @s 3L.Tick matches 25 run data modify entity @s Pose.LeftArm set value [0f,0f,270f]
    execute if score @s 3L.Tick matches 25 run data modify entity @s Pose.RightArm set value [0f,0f,90f]

# 自害するための剣を呼び出す
    execute if score @s 3L.Tick matches 60 rotated ~ -20 positioned ~ ~-0.8 ~ run summon armor_stand ^ ^ ^5 {Marker:1b,Invisible:1b,Tags:["3L.ArmorStandDeathSword","Object","Uninterferable"],Pose:{Head:[20f,0f,0f]}}
# 自分に向かせる
    execute if score @s 3L.Tick matches 60 rotated ~ -20 positioned ~ ~-0.8 ~ positioned ^ ^ ^5 run tp @e[type=armor_stand,tag=3L.ArmorStandDeathSword,distance=..0.01,sort=nearest,limit=1] ~ ~ ~ facing entity @s eyes
# 描画の問題で剣の表示はあとから
    execute if score @s 3L.Tick matches 60 rotated ~ -20 positioned ~ ~-0.8 ~ positioned ^ ^ ^5 run item replace entity @e[type=armor_stand,tag=3L.ArmorStandDeathSword,distance=..0.01,sort=nearest,limit=1] armor.head with iron_sword{CustomModelData:20044}
# 演出
    execute if score @s 3L.Tick matches 60 rotated ~ -20 positioned ~ ~-0.8 ~ positioned ^ ^ ^5 run particle witch ~ ~1.5 ~ 0 0 0 0.3 50

# 顔を上げる
    execute if score @s 3L.Tick matches 67 run item replace entity @s armor.head with stone{CustomModelData:20039}

# 剣を差し込む
    execute if score @s 3L.Tick matches 80 rotated ~ -20 positioned ~ ~-0.8 ~ positioned ^ ^ ^5 as @e[type=armor_stand,tag=3L.ArmorStandDeathSword,distance=..0.01,sort=nearest,limit=1] at @s positioned ~ ~-0.38 ~ run tp @s ^ ^ ^4.6

# 演出
    execute if score @s 3L.Tick matches 80 run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 2
    execute if score @s 3L.Tick matches 83 run particle block redstone_block ~ ~0.68 ~ 0 0 0 1 30
    execute if score @s 3L.Tick matches 83 run playsound minecraft:entity.generic.death hostile @a ~ ~ ~

# 流れる血
    execute if score @s 3L.Tick matches 90..180 rotated ~ 0 positioned ~ ~1.1 ~ run particle dripping_lava ^ ^ ^-0.24 0 0 0 1 1

# うつむく
    execute if score @s 3L.Tick matches 120 run item replace entity @s armor.head with stone{CustomModelData:20043}

# 呻く
    execute if score @s 3L.Tick matches 130 run playsound minecraft:entity.strider.ambient hostile @a ~ ~ ~ 1 0.8

# 吐血
    execute if score @s 3L.Tick matches 150 run playsound minecraft:entity.strider.death hostile @a ~ ~ ~ 1 0.8
    execute if score @s 3L.Tick matches 150 positioned ^ ^ ^0.2 run particle block redstone_block ~ ~1.3 ~ 0 0 0 0 30

# ボスドロ
    execute if score @s 3L.Tick matches 220 run function asset:mob/0129.lexiel/death/boss_drop

# 消失
    execute if score @s 3L.Tick matches 220 run particle minecraft:cloud ~ ~1.3 ~ 0 0 0 0.3 100
    execute if score @s 3L.Tick matches 220 run kill @e[type=armor_stand,tag=3L.ArmorStandDeathSword,distance=..3,sort=nearest,limit=1]
    execute if score @s 3L.Tick matches 220 run kill @s