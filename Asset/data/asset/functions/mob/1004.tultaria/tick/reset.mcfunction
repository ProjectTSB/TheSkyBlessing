#> asset:mob/1004.tultaria/tick/reset
#
#
#
# @within function asset:mob/1004.tultaria/tick/**

# 腕を戻す
    data modify entity @e[type=armor_stand,tag=RW.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.LeftArm set value [0f,0f,-25f]
    data modify entity @e[type=armor_stand,tag=RW.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [10f,0f,20f]

# 頭のポーズ初期化
    data modify entity @e[type=armor_stand,tag=RW.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.Head set value [0f,0f,0f]

# アイテムも戻す
    item replace entity @e[type=armor_stand,tag=RW.ArmorStand,distance=..0.01,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20071}
    item replace entity @e[type=armor_stand,tag=RW.ArmorStand,distance=..0.01,sort=nearest,limit=1] weapon.offhand with stick{CustomModelData:20071}
    item replace entity @e[type=armor_stand,tag=RW.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stick{CustomModelData:20078}

# タグをリセットする
    tag @s remove RW.SkillMelee
    tag @s remove RW.SkillMeteor
    tag @s remove RW.SkillCoordinate
    tag @s remove RW.SkillOffCoordinate
    tag @s remove RW.SkillBall
    tag @s remove RW.SkillStarfury
    tag @s remove RW.SkillSummon

    tag @s remove RW.InAction

# スコアを戻す
    scoreboard players set @s RW.Tick 0

# 拡散値
    execute at @r run function asset:mob/1004.tultaria/tick/move/teleport/place_marker