#> asset:mob/0262.frestchika/tick/4.gun/2.first_tick
#
#
#
# @within function asset:mob/0262.frestchika/tick/4.gun/1.gun

# 腕を変える
    data modify entity @e[type=armor_stand,tag=7A.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [270f,0f,0f]
    data modify entity @e[type=armor_stand,tag=7A.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.LeftArm set value [267f,46f,0f]
    item replace entity @e[type=armor_stand,tag=7A.ArmorStand,distance=..0.01,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20146}
# 頭も
    item replace entity @e[type=armor_stand,tag=7A.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stick{CustomModelData:20149}
# ヒート値を上げる
    scoreboard players add @s 7A.Heat 2