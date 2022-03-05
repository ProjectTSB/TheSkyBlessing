#> asset:mob/0262.frestchika/tick/3.melee2/2.first_tick
#
#
#
# @within function asset:mob/0262.frestchika/tick/3.melee2/1.melee2

# 武器変更
    item replace entity @e[type=armor_stand,tag=7A.ArmorStand,distance=..0.01,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20145}
# 腕変更
    data modify entity @e[type=armor_stand,tag=7A.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.LeftArm set value [342f,217f,0f]
    data modify entity @e[type=armor_stand,tag=7A.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [179f,326f,332f]