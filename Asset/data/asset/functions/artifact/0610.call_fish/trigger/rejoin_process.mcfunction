#> asset:artifact/0610.call_fish/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

# 再帰処理
    execute if entity @e[type=cod,tag=GY.Fish,limit=1] run schedule function asset:artifact/0610.call_fish/trigger/3.1.tick 1t replace