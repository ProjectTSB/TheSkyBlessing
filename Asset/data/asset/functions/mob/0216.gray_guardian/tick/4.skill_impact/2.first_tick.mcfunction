#> asset:mob/0216.gray_guardian/tick/4.skill_impact/2.first_tick
#
#
#
# @within function asset:mob/0216.gray_guardian/tick/4.skill_impact/1.skill_impact

# ポーズ
    data modify entity @e[type=armor_stand,tag=60.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [58f,189f,201f]
    item replace entity @e[type=armor_stand,tag=60.ArmorStand,distance=..0.01,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20133}
    item replace entity @e[type=armor_stand,tag=60.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stick{CustomModelData:20134}
# 角度変更
    execute facing entity @p[distance=..100] eyes rotated ~-40 0 run function asset:mob/0216.gray_guardian/tick/move/teleport
# 演出
    playsound item.trident.return hostile @a[distance=..30] ~ ~ ~ 1 1 1
    playsound item.trident.return hostile @a[distance=..30] ~ ~ ~ 1 1 1
    playsound item.trident.return hostile @a[distance=..30] ~ ~ ~ 1 1 1