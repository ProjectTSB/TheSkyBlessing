#> asset:sacred_treasure/0844.closed_eyes_of_love/trigger/3.1.vfx
#
# vfx
#
# @within function asset:sacred_treasure/0844.closed_eyes_of_love/trigger/3.main

# 音
    playsound minecraft:item.trident.return ambient @a[distance=..16] ~ ~ ~ 1 2 1
    playsound ogg:random.levelup ambient @a[distance=..16] ~ ~ ~ 1 2 1

# パーティクル
    execute positioned ~ ~2.5 ~ run particle block_marker light ^0.15 ^ ^ 0 0 0 0 1