#> asset:mob/0301.sinful_thoughts/tick/reset
#
#
#
# @within function asset:mob/0301.sinful_thoughts/tick/**

say リセット

# 戻す
    data modify entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.LeftArm set value [0f,330f,0f]
    data modify entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [0f,34f,0f]

    item replace entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20255}
    item replace entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] weapon.offhand with stick{CustomModelData:20253}
    item replace entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stick{CustomModelData:20256}

# タグをリセットする
    function asset:mob/0301.sinful_thoughts/tick/skill_tag_remove
# スコアを戻す
    scoreboard players set @s 8D.Tick -20

# 条件でテレポートする
    function asset:mob/0301.sinful_thoughts/tick/move/conditional_teleport