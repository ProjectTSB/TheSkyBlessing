#> asset:artifact/0609.lunar_flare/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

# 次tickも実行
    execute as @e[type=marker,tag=GX.LaserPos,scores={GX.BeamTime=1..}] run schedule function asset:artifact/0609.lunar_flare/trigger/projectile/laser_pos_main 1t replace