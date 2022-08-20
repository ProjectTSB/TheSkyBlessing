#> asset:mob/0301.sinful_thoughts/death/3.death_animation
#
#
#
# @within function asset:mob/0301.sinful_thoughts/death/schedule


# スコア増えるの
    scoreboard players add @s 8D.Tick 1

# ポーズつけて
    execute if score @s 8D.Tick matches 5 run data modify entity @s Pose.LeftArm set value [0f,0f,270f]
    execute if score @s 8D.Tick matches 5 run data modify entity @s Pose.RightArm set value [0f,0f,90f]
# 銃を周囲に召喚する
    execute if score @s 8D.Tick matches 15 run function asset:mob/0301.sinful_thoughts/death/surround
# ポーズして
    execute if score @s 8D.Tick matches 30 run tp @s ~ ~ ~ ~-60 ~
    execute if score @s 8D.Tick matches 30 run data modify entity @s Pose.RightArm set value [270f,60f,00f]
    execute if score @s 8D.Tick matches 30 run data modify entity @s Pose.LeftArm set value [0f,0f,-16f]
    execute if score @s 8D.Tick matches 30 run item replace entity @s armor.head with stick{CustomModelData:20257}
# 発砲と死
    execute if score @s 8D.Tick matches 80 run function asset:mob/0301.sinful_thoughts/death/shot
    execute if score @s 8D.Tick matches 80 run kill @e[type=armor_stand,tag=8D.ArmorStandGun,distance=..20]
    execute if score @s 8D.Tick matches 80 run kill @e[type=armor_stand,tag=8D.ArmorStandDeath,distance=..20]