#> asset:mob/0284.meteor_rain_entity/0.load
#
# MOBに利用するスコアボード等の初期化処理
#
# @within tag/function asset:mob/load

#> 定義類はここに
# @within function asset:mob/0284.meteor_rain_entity/**
    scoreboard objectives add 7W.LifeTime dummy
    scoreboard objectives add 7W.Rot dummy

#> 別の場所でも使うスコア
# @within function asset:mob/028?.meteor_rain*/**
    scoreboard objectives add 7W.UserID dummy