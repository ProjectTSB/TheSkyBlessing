#> asset:mob/1004.tultaria/tick/wait_time/opening/change_pose_2
#
#
#
# @within function asset:mob/1004.tultaria/tick/wait_time/opening/tick

# ポーズ変更
    data modify entity @s Pose.LeftArm set value [0f,0f,-25f]
    data modify entity @s Pose.RightArm set value [-35f,35f,55f]

# 腕を変える
    item replace entity @s weapon.mainhand with stick{CustomModelData:20068}

# 頭変える
    item replace entity @s armor.head with stick{CustomModelData:20078}

# 向きはちょっと斜め
    tp @s ~ ~ ~ ~-45 ~

# 演出
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 3 0.6
    playsound minecraft:entity.evoker.cast_spell hostile @a ~ ~ ~ 3 1.5
    particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.1 50 normal