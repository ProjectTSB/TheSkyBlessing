#> asset:mob/0022.red_knight/tick/wait_time/opening/change_pose_2
#
#
#
# @within function asset:mob/0022.red_knight/tick/wait_time/opening/tick

# 画面エフェクト
    title @a[distance=..50] times 0 5 2
    title @a[distance=..50] title {"text":"","font":"screen_effect","color":"#FFFFFF"}
    title @a[distance=..50] subtitle {"text":""}

# ポーズ変更
    data modify entity @s Pose.LeftArm set value [-25f,5f,-75f]

# 向きはちょっと斜め
    tp @s ~ ~ ~ ~45 ~

# 頭変える
    item replace entity @s armor.head with stick{CustomModelData:20278}

# 頭の向き
    data modify entity @e[type=armor_stand,tag=M.ModelHead,tag=M.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.Head set value [0.1f,0.1f,0.1f]

# 演出
    execute at @a[distance=..50] run playsound minecraft:item.trident.return hostile @p ~ ~ ~ 3 0.6
    execute at @a[distance=..50] run playsound minecraft:entity.evoker.cast_spell hostile @p ~ ~ ~ 3 1.5
    particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.1 50 normal