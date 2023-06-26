#> asset:artifact/0600.xtal/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

# リジョイン処理
    execute if entity @a[scores={GO.Time=1..}] run schedule function asset:artifact/0600.xtal/trigger/schedule 1t replace