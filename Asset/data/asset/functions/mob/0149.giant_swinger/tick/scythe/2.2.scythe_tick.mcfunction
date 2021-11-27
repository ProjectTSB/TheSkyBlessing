#> asset:mob/0149.giant_swinger/tick/scythe/2.2.scythe_tick
#
# ペアリング元の本体から鎌として実行されるtick処理
#
# @within function asset:mob/0149.giant_swinger/tick/2.tick

# 鎌を本体にtp
    tp @s @e[type=skeleton,tag=this,distance=..0.001,sort=nearest,limit=1]
