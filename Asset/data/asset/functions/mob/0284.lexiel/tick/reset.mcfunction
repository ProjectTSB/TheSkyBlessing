#> asset:mob/0284.lexiel/tick/reset
#
#
#
# @within function asset:mob/0284.lexiel/tick/**


# 腕を戻す
    data modify entity @e[type=armor_stand,tag=7W.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.LeftArm set value [0f,0f,340f]
    data modify entity @e[type=armor_stand,tag=7W.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [0f,0f,20f]

# アイテムも戻す
    item replace entity @e[type=armor_stand,tag=7W.ArmorStand,distance=..0.01,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20125}
    item replace entity @e[type=armor_stand,tag=7W.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stick{CustomModelData:20130}

# タグをリセットする
    tag @s remove 7W.SkillMelee
    tag @s remove 7W.SkillBow
    tag @s remove 7W.SkillAxe
    tag @s remove 7W.SkillImpact

# スコアを戻す
    scoreboard players set @s 7W.Tick -20