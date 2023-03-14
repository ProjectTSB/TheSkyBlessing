#> asset:artifact/0985.ark_of_the_sanctuary/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin
# ループ
    execute if entity @a[scores={RD.WaitingTime=1..},limit=1] run schedule function asset:artifact/0985.ark_of_the_sanctuary/trigger/schedule_loop 1t replace