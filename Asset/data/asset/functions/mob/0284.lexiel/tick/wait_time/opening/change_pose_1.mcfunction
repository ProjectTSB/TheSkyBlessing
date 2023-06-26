#> asset:mob/0284.lexiel/tick/wait_time/opening/change_pose_1
#
# アマスタに実行させる
#
# @within function asset:mob/0284.lexiel/tick/wait_time/opening/tick

# ポーズ変更
    data modify entity @s Pose.LeftArm set value [15f,30f,0f]
    data modify entity @s Pose.RightArm set value [297f,283f,8f]
# 向きはちょっと斜め
    tp @s ~ ~ ~ ~-65 ~

# 頭の向き
    execute as @e[type=armor_stand,tag=7W.ModelHead,tag=7W.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] run tp @s ~ ~ ~ ~-20 ~

# 演出
