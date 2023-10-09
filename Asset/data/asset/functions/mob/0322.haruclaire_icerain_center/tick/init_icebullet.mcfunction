#> asset:mob/0322.haruclaire_icerain_center/tick/init_icebullet
#
# Mobのtick時の処理 ランダムな位置に氷雨-弾を召喚
#
# @within function asset:mob/0322.haruclaire_icerain_center/tick/*

# 識別用タグ付与
    tag @s add 8V.IsIceRain

# 拡散
    data modify storage lib: Argument.Bounds set value [[14,14],[0,0],[14,14]]
    function lib:spread_entity/

# 予兆
    execute at @s run particle flash ~ ~1 ~ 0 0 0 0 1

# 角度調整
    execute at @s run tp @s ~ ~10 ~ ~ 90

