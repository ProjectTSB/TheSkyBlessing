#> asset:mob/0262.frestchika/tick/3.melee2/2.first_tick
#
#
#
# @within function asset:mob/0262.frestchika/tick/3.melee2/1.melee2

# 武器変更
    item replace entity @s weapon.mainhand with stick{CustomModelData:20145}
# 腕変更
    data modify entity @s Pose.LeftArm set value [342f,217f,0f]
    data modify entity @s Pose.RightArm set value [179f,326f,332f]

# 演出
    playsound minecraft:entity.arrow.hit_player hostile @a ~ ~ ~ 1 1.6

# ヒート値を上げる
    scoreboard players add @e[type=wither_skeleton,tag=this,distance=..0.01] 7A.Heat 1