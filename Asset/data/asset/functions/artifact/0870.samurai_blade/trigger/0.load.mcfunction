#> asset:artifact/0870.samurai_blade/trigger/0.load
#
# 神器に利用するスコアボード等の初期化処理
#
# @within tag/function asset:artifact/load

#> 定義類はここに
# @within function asset:artifact/0870.samurai_blade/trigger/**
    scoreboard objectives add O6.Time dummy
    scoreboard objectives add O6.WaitingTime dummy
    scoreboard objectives add O6.Turn dummy