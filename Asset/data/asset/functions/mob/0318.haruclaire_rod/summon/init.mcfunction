#> asset:mob/0318.haruclaire_rod/summon/init
#
# Mobの召喚時の処理
#
# @within function asset:mob/0318.haruclaire_rod/summon/2.summon

# モデルの表示位置を調整する
    tp @s ~ ~ ~ ~90 ~
    data modify entity @s Pose.Head set value [0f,0f,1f]
    data modify entity @s Pose.Head[2] set from entity @s Rotation[1]

# 飛距離と速度(m/tick)を設定
    scoreboard players set @s 8U.Range 400
    scoreboard players set @s 8U.Speed 7
    scoreboard players set @s 8U.CoolTime 0
