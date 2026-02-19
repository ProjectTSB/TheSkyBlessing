#> lib:distance/core/geometry.m
#
# ローカル相対座標をZ軸向きに回転させてtp
#
# @within function lib:distance/**

# 幾何学で向き相対をZ軸方向に回転してtp
    $execute facing ^ ^$(Y) ^$(Z) facing ^$(X) ^-$(Y) ^$(Z) facing ^ ^$(Y) ^$(Z) run tp @s ^-$(X) ^-$(Y) ^$(Z)

# マーカーのPos取得
    data modify storage lib: Return.Distance set from entity @s Pos[2]
