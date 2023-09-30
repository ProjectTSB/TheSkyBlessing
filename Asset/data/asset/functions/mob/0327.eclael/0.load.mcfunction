#> asset:mob/0327.eclael/0.load
#
# MOBに利用するスコアボード等の初期化処理
#
# @within tag/function asset:mob/load

#> 定義類はここに
# @within function asset:mob/0327.eclael/**
    # 処理用タイマー
    scoreboard objectives add 93.AnimationTimer dummy
    # 行動回数
    scoreboard objectives add 93.ActionCount dummy
    # 怯み処理用
    scoreboard objectives add 93.DamageIntervalTimer dummy
    scoreboard objectives add 93.DamageTimer dummy
    # 処理用カウンター
    scoreboard objectives add 93.TempCount dummy
