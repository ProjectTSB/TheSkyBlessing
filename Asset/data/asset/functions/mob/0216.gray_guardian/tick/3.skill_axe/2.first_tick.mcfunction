#> asset:mob/0216.gray_guardian/tick/3.skill_axe/2.first_tick
#
#
#
# @within function asset:mob/0216.gray_guardian/tick/3.skill_axe/1.skill_axe

# アイテム変える
    item replace entity @e[type=armor_stand,tag=60.ArmorStand,distance=..0.01,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20133}
# ポーズ
    data modify entity @e[type=armor_stand,tag=60.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [350f,352f,0f]
# 演出
    playsound entity.iron_golem.death hostile @a ~ ~ ~ 1 0.8