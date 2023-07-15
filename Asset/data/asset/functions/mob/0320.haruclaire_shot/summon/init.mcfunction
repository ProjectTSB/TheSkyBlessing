#> asset:mob/0320.haruclaire_shot/summon/init
#
# Mobの召喚時の処理
#
# @within function asset:mob/0320.haruclaire_shot/summon/2.summon

# 移動方向設定
    tp @s ~ ~ ~ ~ ~

# 飛距離と速度(m/tick)を設定
    scoreboard players set @s 8W.Range 300
    scoreboard players set @s 8W.Speed 10
