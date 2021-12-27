#> asset:mob/1004.tultaria/tick/6.starfury_attack/2.first_tick
#
#
#
# @within function asset:mob/1004.tultaria/tick/6.starfury_attack/1.starfury_attack

# ポーズ
    data modify entity @e[type=armor_stand,tag=RW.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.LeftArm set value [30f,360f,28f]
    data modify entity @e[type=armor_stand,tag=RW.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [270f,0f,0f]

# 腕を変える
    item replace entity @e[type=armor_stand,tag=RW.ArmorStand,distance=..0.01,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20070}

# テレポート演出
    execute at @s run function asset:mob/1004.tultaria/tick/move/vfx

# テレポート
    function asset:mob/1004.tultaria/tick/move/tereport_center

# 演出
    execute at @s run playsound entity.puffer_fish.death hostile @a[distance=..50] ~ ~ ~ 1 0 1