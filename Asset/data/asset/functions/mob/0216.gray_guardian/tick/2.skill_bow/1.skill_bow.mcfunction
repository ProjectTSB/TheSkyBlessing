#> asset:mob/0216.gray_guardian/tick/2.skill_bow/1.skill_bow
#
#
#
# @within function asset:mob/0216.gray_guardian/tick/4.skill_active
# 最初に実行
    execute if score @s 60.Tick matches 0 run function asset:mob/0216.gray_guardian/tick/2.skill_bow/2.first_tick

#
    execute if score @s 60.Tick matches 20 run item replace entity @e[type=armor_stand,tag=60.ArmorStand,distance=..0.01,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20132}

# リセット
    execute if score @s 60.Tick matches 90.. run function asset:mob/0216.gray_guardian/tick/reset