#> asset:mob/0262.frestchika/tick/2.melee/2.first_tick
#
#
#
# @within function asset:mob/0262.frestchika/tick/2.melee/1.melee

# 頭変更
    item replace entity @e[type=armor_stand,tag=7A.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stick{CustomModelData:20148}
# 武器変更
    item replace entity @e[type=armor_stand,tag=7A.ArmorStand,distance=..0.01,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20145}
# 腕変更
    data modify entity @e[type=armor_stand,tag=7A.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [38f,197f,296f]
    data modify entity @e[type=armor_stand,tag=7A.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.LeftArm set value [48f,16f,0f]

# ヒート値を上げる
    scoreboard players add @s 7A.Heat 3