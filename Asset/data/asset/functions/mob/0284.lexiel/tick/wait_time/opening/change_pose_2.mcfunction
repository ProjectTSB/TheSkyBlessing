#> asset:mob/0284.lexiel/tick/wait_time/opening/change_pose_2
#
#
#
# @within function asset:mob/0284.lexiel/tick/wait_time/opening/tick

# ポーズ変更
    data modify entity @s Pose.LeftArm set value [0f,0f,-25f]
    data modify entity @s Pose.RightArm set value [267f,96f,8f]
# 腕を変える
    item replace entity @s weapon.mainhand with stick{CustomModelData:20287}

# 向きはちょっと斜め
    tp @s ~ ~ ~ ~-45 ~

# 頭の向き
    data modify entity @e[type=armor_stand,tag=7W.ModelHead,tag=7W.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.Head set value [0.1f,0.1f,0.1f]
    execute as @e[type=armor_stand,tag=7W.ModelHead,tag=7W.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] run tp @s ~ ~ ~ ~15 ~

# 演出
    execute at @a[distance=..50] run playsound minecraft:item.trident.return hostile @p ~ ~ ~ 3 0.6
    execute at @a[distance=..50] run playsound minecraft:entity.evoker.cast_spell hostile @p ~ ~ ~ 3 1.5
    particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.1 50 normal