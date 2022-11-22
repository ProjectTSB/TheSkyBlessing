#> asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/0.load
#
# 神器に利用するスコアボード等の初期化処理
#
# @within tag/function asset:sacred_treasure/load

#> 定義類はここに
# @within function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/**
    scoreboard objectives add SA.Tick dummy
    scoreboard objectives add SA.Combo dummy
    scoreboard objectives add SA.Wait dummy
    scoreboard objectives add SA.UserID dummy
    scoreboard objectives add SA.BloodCharge dummy