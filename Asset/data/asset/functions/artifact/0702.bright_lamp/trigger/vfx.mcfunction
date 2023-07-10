#> asset:artifact/0702.bright_lamp/trigger/vfx
#
#
#
# @within function
#   asset:artifact/0702.bright_lamp/trigger/3.main
#   asset:artifact/0702.bright_lamp/trigger/vfx

# 演出
    execute rotated ~00 0 run particle end_rod ^ ^ ^2 ^ ^ ^100000000 0.000000005 0
    execute rotated ~04 0 run particle end_rod ^ ^ ^2 ^ ^ ^100000000 0.000000005 0
    execute rotated ~08 0 run particle end_rod ^ ^ ^2 ^ ^ ^100000000 0.000000005 0
    execute rotated ~12 0 run particle end_rod ^ ^ ^2 ^ ^ ^100000000 0.000000005 0
    execute rotated ~16 0 run particle end_rod ^ ^ ^2 ^ ^ ^100000000 0.000000005 0

# スコア
    scoreboard players add $RecursiveLimit Temporary 1

# 一周するまで再帰
    execute if score $RecursiveLimit Temporary matches ..17 rotated ~20 ~ run function asset:artifact/0702.bright_lamp/trigger/vfx