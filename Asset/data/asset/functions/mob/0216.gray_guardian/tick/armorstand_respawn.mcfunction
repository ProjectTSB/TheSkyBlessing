#> asset:mob/0216.gray_guardian/tick/armorstand_respawn
#
#
#
# @within function asset:mob/0216.gray_guardian/tick/2.tick

# どっかいったアマスタを殺す
    execute as @e[type=armor_stand,tag=60.ArmorStand] at @s unless entity @e[type=iron_golem,tag=60.Angel,distance=..0.1] run kill @s
# 見た目用のアマスタを召喚
    summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["60.ArmorStand","60.ArmorStandThis","Object","Uninterferable"],Pose:{LeftArm:[0f,0f,340f],RightArm:[0f,0f,20f]},HandItems:[{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20125}},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20128}}],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20130}}]}
# 位置をあわせる
    tp @e[type=armor_stand,tag=60.ArmorStandThis,distance=..0.1,sort=nearest,limit=1] @s
# タグを消す
    tag @e[type=armor_stand,tag=60.ArmorStandThis,distance=..0.1,sort=nearest,limit=1] remove 60.ArmorStandThis
# スコアも一応戻す
    scoreboard players set @s 60.Tick -30

# スキル発動中に移動した場合困るので消す
    tag @s remove 60.SkillMelee
    tag @s remove 60.SkillBow
    tag @s remove 60.SkillAxe
    tag @s remove 60.SkillImpact

# 強制的にテレポする
    function asset:mob/0216.gray_guardian/tick/move/spread