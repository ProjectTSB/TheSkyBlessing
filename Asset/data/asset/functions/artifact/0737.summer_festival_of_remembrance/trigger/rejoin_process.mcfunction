#> asset:artifact/0737.summer_festival_of_remembrance/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

# ループ再開
    execute if entity @e[type=marker,tag=KH.FireworkCore,limit=1] run schedule function asset:artifact/0737.summer_festival_of_remembrance/trigger/firework_process/core/loop 1t replace