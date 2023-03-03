#> asset:artifact/0870.samurai_blade/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin
# ループ
    execute if entity @a[scores={O6.WaitingTime=1..},limit=1] run schedule function asset:artifact/0870.samurai_blade/trigger/schedule_loop 1t replace