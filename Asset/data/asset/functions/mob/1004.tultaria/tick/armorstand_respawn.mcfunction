#> asset:mob/1004.tultaria/tick/armorstand_respawn
#
#
#
# @within function asset:mob/1004.tultaria/tick/2.tick

# どっかいったアマスタを殺す
    execute as @e[type=armor_stand,tag=RW.ArmorStand] at @s unless entity @e[type=wither_skeleton,tag=RW.Boss,distance=..0.1] run kill @s
# 見た目用のアマスタを召喚
    summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["RW.ArmorStand","RW.ArmorStandThis","Object","Uninterferable"],Pose:{LeftArm:[0f,0f,340f],RightArm:[0f,0f,20f]},HandItems:[{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20069}},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20071}}],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20072}}]}
# 位置をあわせる
    tp @e[type=armor_stand,tag=RW.ArmorStandThis,distance=..0.01] @s
# タグを消す
    tag @e[type=armor_stand,tag=RW.ArmorStandThis,distance=..0.01] remove RW.ArmorStandThis
# スコアも一応戻す
    scoreboard players set @s RW.Tick -30

# スキル発動中に移動した場合困るので消す
    tag @s remove RW.SkillMelee
    tag @s remove RW.SkillMeteor
    tag @s remove RW.SkillCoordinate
    tag @s remove RW.SkillOffCoordinate
    tag @s remove RW.SkillBall
    tag @s remove RW.SkillStarfury
    tag @s remove RW.SkillSummon

# 強制的にテレポする
    data modify storage lib: Argument.Bounds set value [[8d,8d],[0d,0d],[8d,8d]]
    function asset:mob/1004.tultaria/tick/move/spread