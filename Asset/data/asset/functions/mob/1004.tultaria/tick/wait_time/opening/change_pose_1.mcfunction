#> asset:mob/1004.tultaria/tick/wait_time/opening/change_pose_1
#
# アマスタに実行させる
#
# @within function asset:mob/1004.tultaria/tick/wait_time/opening/tick

# ポーズ変更
    data modify entity @s Pose.LeftArm set value [0f,0f,-15f]
    data modify entity @s Pose.RightArm set value [-90f,0f,75f]

# 向きはちょっと斜め
    tp @s ~ ~ ~ ~-65 ~

# 頭の向き
    item replace entity @e[type=armor_stand,tag=RW.ModelHead,distance=..0.5,sort=nearest,limit=1] armor.head with stick{CustomModelData:20088}
    execute as @e[type=armor_stand,tag=RW.ModelHead,distance=..0.5,sort=nearest,limit=1] run tp @s ~ ~ ~ ~-45 ~

# 演出
