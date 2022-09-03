#> asset:mob/1004.tultaria/tick/wait_time/opening/change_pose_2
#
#
#
# @within function asset:mob/1004.tultaria/tick/wait_time/opening/tick

# ポーズ変更
    data modify entity @s Pose.LeftArm set value [0f,0f,-25f]
    data modify entity @s Pose.RightArm set value [-35f,35f,55f]

# 腕を変える
    item replace entity @s weapon.mainhand with stick{CustomModelData:20069}

# 頭変える
    item replace entity @s armor.head with stick{CustomModelData:20078}

# 向きはちょっと斜め
    tp @s ~ ~ ~ ~-45 ~

# 頭の向き
    data modify entity @e[type=armor_stand,tag=RW.ModelHead,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.Head set value [0.1f,0.1f,0.1f]
    item replace entity @e[type=armor_stand,tag=RW.ModelHead,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20086}
    execute as @e[type=armor_stand,tag=RW.ModelHead,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] run tp @s ~ ~ ~ ~15 ~

# 演出
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 3 0.6
    playsound minecraft:entity.evoker.cast_spell hostile @a ~ ~ ~ 3 1.5
    particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.1 50 normal