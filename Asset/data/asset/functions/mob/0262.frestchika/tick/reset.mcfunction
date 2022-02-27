#> asset:mob/0262.frestchika/tick/reset
#
#
#
# @within function asset:mob/0262.frestchika/tick/**

# 腕を戻す
    data modify entity @e[type=armor_stand,tag=7A.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.LeftArm set value [0f,0f,340f]
    data modify entity @e[type=armor_stand,tag=7A.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [0f,0f,20f]
# アイテムも戻す
    item replace entity @e[type=armor_stand,tag=7A.ArmorStand,distance=..0.01,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20068}
    item replace entity @e[type=armor_stand,tag=7A.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stick{CustomModelData:20072}

# タグをリセットする
    tag @s remove 7A.SkillMelee
# スコアを戻す
    scoreboard players set @s 7A.Tick -40