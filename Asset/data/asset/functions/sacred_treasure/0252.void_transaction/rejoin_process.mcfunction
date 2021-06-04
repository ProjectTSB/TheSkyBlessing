#> asset:sacred_treasure/0252.void_transaction/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:sacred_treasure/rejoin

# 次tickにschedule予約
    execute if entity @a[scores={70.Timer=1..2400},limit=1] run schedule function asset:sacred_treasure/0252.void_transaction/3.2.void 1t replace