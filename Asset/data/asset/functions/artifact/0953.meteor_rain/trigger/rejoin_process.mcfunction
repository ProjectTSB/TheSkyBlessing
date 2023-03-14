#> asset:artifact/0953.meteor_rain/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

# このfunctionをループさせる
    execute if score @s QH.Tick matches 60.. run schedule function asset:artifact/0953.meteor_rain/trigger/4.emitter_tick 1t
