#> asset:mob/1004.tultaria/tick/7.star_summon/2.first_tick
#
#
#
# @within function asset:mob/1004.tultaria/tick/7.star_summon/1.star_summon

# ポーズ
    data modify entity @e[type=armor_stand,tag=RW.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.LeftArm set value [30f,360f,28f]
    data modify entity @e[type=armor_stand,tag=RW.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [270f,0f,0f]

# 腕を変える
    item replace entity @e[type=armor_stand,tag=RW.ArmorStand,distance=..0.01,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20070}

# 演出
    execute at @a[distance=..100] run playsound minecraft:entity.evoker.prepare_summon hostile @a ~ ~ ~ 1 0.7