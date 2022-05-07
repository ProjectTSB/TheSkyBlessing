#> asset:mob/0262.frestchika/tick/2.melee/2.first_tick
#
#
#
# @within function asset:mob/0262.frestchika/tick/2.melee/1.melee

# 頭変更
    item replace entity @s armor.head with stick{CustomModelData:20148}
# 武器変更
    item replace entity @s weapon.mainhand with stick{CustomModelData:20145}
# 腕変更
    data modify entity @s Pose.RightArm set value [38f,197f,296f]
    data modify entity @s Pose.LeftArm set value [48f,16f,0f]

# ヒート値を上げる
    scoreboard players add @e[type=wither_skeleton,tag=this,distance=..0.01] 7A.Heat 3