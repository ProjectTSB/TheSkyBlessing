#> asset:mob/0262.frestchika/tick/armorstand_respawn
#
#
#
# @within function asset:mob/0262.frestchika/tick/2.tick

# どっかいったアマスタを殺す
    execute as @e[type=armor_stand,tag=7A.ArmorStand] at @s unless entity @e[type=wither_skeleton,tag=7A.Angel,distance=..0.1] run kill @s
# 見た目用のアマスタを召喚
    summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["7A.ArmorStand","7A.ArmorStandThis","Object","Uninterferable"],Pose:{LeftArm:[0f,0f,340f],RightArm:[0f,0f,20f]},HandItems:[{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20069}},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20071}}],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20072}}]}
# 位置をあわせる
    tp @e[type=armor_stand,tag=7A.ArmorStandThis,distance=..0.01] @s
# タグを消す
    tag @e[type=armor_stand,tag=7A.ArmorStandThis,distance=..0.01] remove 7A.ArmorStandThis
# スコアも一応戻す
    scoreboard players set @s 7A.Tick -30

# スキル発動中に移動した場合困るので消す
    tag @s remove 7A.SkillMelee

# 強制的にテレポする
    execute at @s run function asset:mob/0262.frestchika/tick/move/spread