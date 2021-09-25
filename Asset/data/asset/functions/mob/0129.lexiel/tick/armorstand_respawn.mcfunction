#> asset:mob/0129.lexiel/tick/armorstand_respawn
#
#
#
# @within function asset:mob/0129.lexiel/tick/2.tick


# どっかいったアマスタを殺す
    execute as @e[type=armor_stand,tag=3L.ArmorStand] at @s unless entity @e[type=wither_skeleton,tag=3L.Angel,distance=0] run kill @s
# 見た目用のアマスタを召喚
    summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["3L.ArmorStand","3L.ArmorStandThis"],Pose:{LeftArm:[0f,0f,340f],RightArm:[0f,0f,20f]},HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:20035}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:20038}}],ArmorItems:[{},{},{},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:20039}}]}
# 位置をあわせる
    tp @e[type=armor_stand,tag=3L.ArmorStandThis,distance=..0.01] @s
# タグを消す
    tag @e[type=armor_stand,tag=3L.ArmorStandThis,distance=..0.01] remove 3L.ArmorStandThis
# スコアも一応戻す
    scoreboard players reset @s 3L.Tick

# 強制的にテレポする
    function asset:mob/0129.lexiel/tick/2.1.teleport

