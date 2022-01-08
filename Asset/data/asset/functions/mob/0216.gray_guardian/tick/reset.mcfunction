#> asset:mob/0216.gray_guardian/tick/reset
#
#
#
# @within function asset:mob/0216.gray_guardian/tick/**


# 腕を戻す
    data modify entity @e[type=armor_stand,tag=60.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.LeftArm set value [0f,0f,340f]
    data modify entity @e[type=armor_stand,tag=60.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [0f,0f,20f]

# アイテムも戻す
    item replace entity @e[type=armor_stand,tag=60.ArmorStand,distance=..0.01,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20125}

# タグをリセットする
    tag @s remove 60.SkillMelee

# スコアを戻す
    scoreboard players set @s 60.Tick -40