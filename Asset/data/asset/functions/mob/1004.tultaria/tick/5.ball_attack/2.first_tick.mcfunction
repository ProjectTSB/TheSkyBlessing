#> asset:mob/1004.tultaria/tick/5.ball_attack/2.first_tick
#
#
#
# @within function asset:mob/1004.tultaria/tick/5.ball_attack/1.ball_attack

# ポーズ
    data modify entity @e[type=armor_stand,tag=RW.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.LeftArm set value [30f,360f,28f]
    data modify entity @e[type=armor_stand,tag=RW.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [270f,0f,0f]

# 腕を変える
    item replace entity @e[type=armor_stand,tag=RW.ArmorStand,distance=..0.01,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20070}
# 頭変える
    item replace entity @e[type=armor_stand,tag=RW.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stick{CustomModelData:20075}
# 演出
    playsound minecraft:entity.zombie_villager.converted master @a[distance=..30] ~ ~ ~ 1 2 1
