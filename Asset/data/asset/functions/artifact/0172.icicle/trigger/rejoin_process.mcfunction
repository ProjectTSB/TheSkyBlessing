#> asset:artifact/0172.icicle/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

# ループする
    execute if entity @e[type=area_effect_cloud,tag=4S.Laser,limit=1] run schedule function asset:artifact/0172.icicle/trigger/laser/schedule 1t replace