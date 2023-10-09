#> asset:mob/0319.haruclaire_ice_bullet/summon/init
#
# Mobの召喚時の処理
#
# @within function asset:mob/0319.haruclaire_ice_bullet/summon/2.summon

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $180 Const

# モデルの角度設定
    data modify entity @s Pose.Head set value [0f,0f,1f]
    data modify entity @s Pose.Head[0] set from entity @s Rotation[1]
    execute store result entity @s Pose.Head[2] float 1 run scoreboard players get $Random Temporary
    tp @s ~ ~ ~ ~ ~

# リセット
    scoreboard players reset $Random Temporary

# 飛距離と速度(m/tick)を設定
    scoreboard players set @s 8V.Range 400
    scoreboard players set @s 8V.Speed 7

# 判別用タグ付与
    tag @s add 8V.IceBullet