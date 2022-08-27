#> asset:mob/1004.tultaria/tick/wait_time/opening/change_pose_1
#
# アマスタに実行させる
#
# @within function asset:mob/1004.tultaria/tick/wait_time/opening/tick

# ポーズ変更
    data modify entity @s Pose.LeftArm set value [0f,0f,-15f]
    data modify entity @s Pose.RightArm set value [-90f,0f,75f]

# 腕を変える
    #item replace entity @s weapon.mainhand with stick{CustomModelData:20071}

# 頭変える
    item replace entity @s armor.head with stick{CustomModelData:20077}

# 向きはちょっと斜め
    tp @s ~ ~ ~ ~-65 ~

# 演出
