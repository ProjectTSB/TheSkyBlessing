#> asset:mob/0285.meteor_rain_emitter/0.load
#
# MOBに利用するスコアボード等の初期化処理
#
# @within tag/function asset:mob/load

#> 定義類はここに
# @within function asset:mob/0285.meteor_rain_emitter/**
    scoreboard objectives add 7X.MoveTime dummy
    scoreboard objectives add 7X.Count dummy
#> 別の場所でも使うスコア
# @within function asset:mob/028?.meteor_rain*/**
    scoreboard objectives add 7X.UserID dummy