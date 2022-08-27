#> asset:mob/1011.meteor/0.load
#
# MOBに利用するスコアボード等の初期化処理
#
# @within tag/function asset:mob/load

#> 定義類はここに
# @within function asset:mob/1011.meteor/**/**
    scoreboard objectives add S3.Range dummy
    scoreboard objectives add S3.Speed dummy
    scoreboard objectives add S3.MoveTimesPerTick dummy