#> asset:mob/0262.frestchika/tick/4.gun/2.first_tick
#
#
#
# @within function asset:mob/0262.frestchika/tick/4.gun/1.gun

# 腕を変える
    data modify entity @s Pose.RightArm set value [270f,0f,0f]
    data modify entity @s Pose.LeftArm set value [267f,46f,0f]
    item replace entity @s weapon.mainhand with stick{CustomModelData:20146}
# 頭も
    item replace entity @s armor.head with stick{CustomModelData:20149}
# ヒート値を上げる
    scoreboard players add @e[type=wither_skeleton,tag=this,distance=..0.01] 7A.Heat 2