#> asset:mob/1008.yellow_star/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

# Scheduleloop
    execute if entity @a[scores={S0.Time=1..}] run schedule function asset:mob/1008.yellow_star/attack/3.scheduleloop 1t replace
