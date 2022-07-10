#> asset:sacred_treasure/0985.noname/trigger/0.load
#
# 神器に利用するスコアボード等の初期化処理
#
# @within tag/function asset:sacred_treasure/load

#> 定義類はここに
# @within function asset:sacred_treasure/0985.noname/trigger/**
    scoreboard objectives add RD.Time dummy
    scoreboard objectives add RD.WaitingTime dummy
    scoreboard objectives add RD.Turn dummy
    scoreboard objectives add RD.SwordTime dummy
    scoreboard objectives add RD.SwordUserID dummy