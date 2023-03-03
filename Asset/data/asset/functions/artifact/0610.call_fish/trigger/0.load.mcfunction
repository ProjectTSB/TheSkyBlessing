#> asset:artifact/0610.call_fish/trigger/0.load
#
# 神器に利用するスコアボード等の初期化処理
#
# @within tag/function asset:artifact/load

#> 定義類はここに
# @within function asset:artifact/0610.call_fish/trigger/**
    scoreboard objectives add GY.FishTime dummy
    scoreboard objectives add GY.FishCool dummy
    scoreboard objectives add GY.UserID dummy