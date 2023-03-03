#> asset:artifact/0647.thorn_armor/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

# スケジュールループのリスタート
    execute if entity @a[tag=HZ.FullSet,limit=1] run schedule function asset:artifact/0647.thorn_armor/trigger/9.loop 1t replace