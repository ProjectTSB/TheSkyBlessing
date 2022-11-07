#> asset:mob/0284.lexiel/tick/armorstand_respawn
#
#
#
# @within function asset:mob/0284.lexiel/tick/2.tick

# どっかいったアマスタを殺す
    execute as @e[type=armor_stand,tag=7W.ArmorStand] at @s unless entity @e[type=wither_skeleton,tag=7W.Angel,distance=..0.1] run kill @s
# 見た目用のアマスタを召喚
    summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["7W.ArmorStand","7W.ArmorStandThis","Object","Uninterferable"],Pose:{LeftArm:[0f,0f,340f],RightArm:[0f,0f,20f]},HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:20035}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:20038}}],ArmorItems:[{},{},{},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:20039}}]}
# 位置をあわせる
    tp @e[type=armor_stand,tag=7W.ArmorStandThis,distance=..0.1,sort=nearest,limit=1] @s
# タグを消す
    tag @e[type=armor_stand,tag=7W.ArmorStandThis,distance=..0.1,sort=nearest,limit=1] remove 7W.ArmorStandThis
# スコアも一応戻す
    scoreboard players set @s 7W.Tick -30

# スキル発動中に移動した場合困るので消す
    tag @s remove 7W.SkillMelee
    tag @s remove 7W.SkillBow
    tag @s remove 7W.SkillAxe
    tag @s remove 7W.SkillImpact

# 強制的にテレポする
    function asset:mob/0284.lexiel/tick/move/spread