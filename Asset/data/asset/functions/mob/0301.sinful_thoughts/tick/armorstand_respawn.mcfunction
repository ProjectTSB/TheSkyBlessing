#> asset:mob/0301.sinful_thoughts/tick/armorstand_respawn
#
#
#
# @within function asset:mob/0301.sinful_thoughts/tick/2.tick

# どっかいったアマスタを殺す
    execute as @e[type=armor_stand,tag=8D.ArmorStand] at @s unless entity @e[type=wither_skeleton,tag=8D.Angel,distance=..0.1] run kill @s
# 見た目用のアマスタを召喚
    summon armor_stand ~ ~ ~ {Marker:1b,NoBasePlate:1b,Invisible:1b,Tags:["8D.ArmorStand","8D.ArmorStandThis","Object","Uninterferable"],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,0f,0f]},HandItems:[{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20254}},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20252}}],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20256}}]}
# 位置をあわせる
    tp @e[type=armor_stand,tag=8D.ArmorStandThis,distance=..0.01] @s
# タグを消す
    tag @e[type=armor_stand,tag=8D.ArmorStandThis,distance=..0.01] remove 8D.ArmorStandThis
# スコアも一応戻す
    scoreboard players set @s 8D.Tick -2
# スキル発動中に移動した場合困るので消す
    function asset:mob/0301.sinful_thoughts/tick/skill_tag_remove

# 強制的にテレポする
    execute at @s run function asset:mob/0301.sinful_thoughts/tick/move/spread