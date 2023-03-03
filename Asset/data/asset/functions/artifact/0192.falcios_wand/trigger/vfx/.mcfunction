#> asset:artifact/0192.falcios_wand/trigger/vfx/
#
#
#
# @within function asset:artifact/0192.falcios_wand/trigger/3.main

#> Val
# @private
#declare tag Init

# VFX用Entityの初期化
    summon marker ~ ~ ~ {Tags:["5C.VFX","Init","Object","Uninterferable"]}
# 初回tickの処理
    execute as @e[type=marker,tag=Init,distance=..0.01] run function asset:artifact/0192.falcios_wand/trigger/vfx/main
# 次tick以降用にschedule予約
    schedule function asset:artifact/0192.falcios_wand/trigger/vfx/task 1t
# リセット
    tag @e[type=marker,tag=Init,distance=..0.01] remove Init