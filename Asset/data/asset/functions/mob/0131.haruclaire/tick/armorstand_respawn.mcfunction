#> asset:mob/0131.haruclaire/tick/armorstand_respawn
#
#
#
# @within function asset:mob/0131.haruclaire/tick/2.tick


# どっかいったアマスタを殺す
    execute as @e[type=armor_stand,tag=3N.ArmorStand] at @s unless entity @e[type=wither_skeleton,tag=3N.Angel,distance=0] run kill @s
# 見た目用のアマスタを召喚
    summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["3N.ArmorStand","3N.ArmorStandThis","Object","Uninterferable"],Pose:{LeftArm:[0f,0f,340f],RightArm:[0f,0f,20f]},HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:20055}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:20056}}],ArmorItems:[{},{},{},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:20058}}]}
# 位置をあわせる
    tp @e[type=armor_stand,tag=3N.ArmorStandThis,distance=..0.01] @s
# タグを消す
    tag @e[type=armor_stand,tag=3N.ArmorStandThis,distance=..0.01] remove 3N.ArmorStandThis
# スコアも一応戻す
    scoreboard players set @s 3N.Tick -20

# スキル発動中に移動した場合困るので消す
    tag @s remove 3N.SkillIceArea
    tag @s remove 3N.SkillIceCannon
    tag @s remove 3N.SkillIcePillar

# 強制的にテレポする
    function asset:mob/0131.haruclaire/tick/teleport


