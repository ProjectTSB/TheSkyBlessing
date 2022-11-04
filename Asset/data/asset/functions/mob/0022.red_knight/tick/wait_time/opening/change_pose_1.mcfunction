#> asset:mob/0022.red_knight/tick/wait_time/opening/change_pose_1
#
#
#
# @within asset:mob/0022.red_knight/tick/wait_time/opening/tick


# ポーズ変更
    data modify entity @s Pose.LeftArm set value [0f,0f,-5f]
    data modify entity @s Pose.RightArm set value [-15f,55f,15f]

# 手持ちアイテム
    item replace entity @s weapon.mainhand with stick{CustomModelData:20271}

# 向きはちょっと斜め
    tp @s ~ ~ ~ ~15 ~

# 頭の向き
    data modify entity @e[type=armor_stand,tag=M.ModelHead,tag=M.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.Head set value [15.1f,0.1f,0.1f]

# 演出
    playsound minecraft:block.grindstone.use hostile @a ~ ~ ~ 1 1.5
    playsound minecraft:item.axe.scrape hostile @a ~ ~ ~ 1 2
    particle minecraft:crit ~ ~1 ~ 0 0 0 0.1 20 normal