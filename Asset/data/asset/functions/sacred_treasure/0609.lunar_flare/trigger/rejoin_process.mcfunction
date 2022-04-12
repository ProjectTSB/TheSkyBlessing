#> asset:sacred_treasure/0609.lunar_flare/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

# 次tickも実行
    execute as @e[type=armor_stand,tag=GX.LaserPos,scores={GX.BeamTime=1..}] run schedule function asset:sacred_treasure/0609.lunar_flare/trigger/3.1.beamshot 1t replace