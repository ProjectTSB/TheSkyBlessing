#> asset:mob/0216.gray_guardian/tick/2.skill_bow/2.first_tick
#
#
#
# @within function asset:mob/0216.gray_guardian/tick/2.skill_bow/1.skill_bow

# アイテム変える
    item replace entity @e[type=armor_stand,tag=60.ArmorStand,distance=..0.01,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20131}
# ポーズ
    data modify entity @e[type=armor_stand,tag=60.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [350f,352f,0f]
# 演出
    playsound item.crossbow.quick_charge_3 hostile @a ~ ~ ~ 1 1
    playsound item.crossbow.quick_charge_2 hostile @a ~ ~ ~ 1 1
    playsound item.crossbow.quick_charge_1 hostile @a ~ ~ ~ 1 1