#> asset:sacred_treasure/1023.brave_bow/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

execute if entity @p[scores={SF.Wait=0..}] run schedule function asset:sacred_treasure/1023.brave_bow/trigger/combo/tick 1t
