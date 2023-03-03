#> asset:artifact/0953.meteor_rain/trigger/0.load
#
# 神器に利用するスコアボード等の初期化処理
#
# @within tag/function asset:artifact/load

#> 定義類はここに
# @within function asset:artifact/0953.meteor_rain/trigger/**
    scoreboard objectives add QH.Tick dummy
    scoreboard objectives add QH.UserID dummy
    scoreboard objectives add QH.MeteorCastedCount dummy
    scoreboard objectives add QH.Range dummy
    scoreboard objectives add QH.Speed dummy
    scoreboard objectives add QH.MoveTimesPerTick dummy