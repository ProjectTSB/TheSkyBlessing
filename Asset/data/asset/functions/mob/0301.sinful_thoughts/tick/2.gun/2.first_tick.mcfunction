#> asset:mob/0301.sinful_thoughts/tick/2.gun/2.first_tick
#
#
#
# @within function asset:mob/0301.sinful_thoughts/tick/2.gun/1.gun


# 突き出し
    execute facing entity @p[gamemode=!spectator,distance=..100] eyes rotated ~90 ~ run function asset:mob/0301.sinful_thoughts/tick/move/teleport
    data modify entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.LeftArm set value [270f,270f,0f]
    item replace entity @e[type=armor_stand,tag=8D.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stick{CustomModelData:20258}
