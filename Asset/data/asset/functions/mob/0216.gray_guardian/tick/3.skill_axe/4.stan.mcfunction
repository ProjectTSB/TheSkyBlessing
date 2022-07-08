#> asset:mob/0216.gray_guardian/tick/3.skill_axe/4.stan
#
#
#
# @within function asset:mob/0216.gray_guardian/tick/3.skill_axe/1.skill_axe

# 腕を戻す
    data modify entity @e[type=armor_stand,tag=60.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.LeftArm set value [0f,0f,340f]
    data modify entity @e[type=armor_stand,tag=60.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [0f,0f,20f]

# アイテムを外す
    item replace entity @e[type=armor_stand,tag=60.ArmorStand,distance=..0.01,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20124}

# 効果音
    playsound block.anvil.land hostile @a ~ ~ ~ 1 1