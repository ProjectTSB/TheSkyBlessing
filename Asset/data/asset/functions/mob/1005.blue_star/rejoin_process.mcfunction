#> asset:mob/1005.blue_star/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

# loop
    execute if entity @a[scores={RX.Time=1..},limit=1] run schedule function asset:mob/1005.blue_star/attack/3.scheduleloop 1t replace