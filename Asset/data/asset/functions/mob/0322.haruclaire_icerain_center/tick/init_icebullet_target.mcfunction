#> asset:mob/0322.haruclaire_icerain_center/tick/init_icebullet_target
#
# Mobのtick時の処理 ランダムな位置に氷雨-弾を召喚
#
# @within function asset:mob/0322.haruclaire_icerain_center/tick/*

# 識別用タグ付与
    tag @s add 8V.IsIceRain

# ランダムなプレイヤーの頭上に移動
    execute positioned as @r[distance=..30] run tp @s ~ ~10 ~ ~ 90

# 予兆
    execute at @s run particle flash ~ ~-9 ~ 0 0 0 0 1