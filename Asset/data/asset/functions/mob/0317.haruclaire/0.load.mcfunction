#> asset:mob/0317.haruclaire/0.load
#
# MOBに利用するスコアボード等の初期化処理
#
# @within tag/function asset:mob/load

#> 定義類はここに
# @within function asset:mob/0317.haruclaire/**
    # 処理用タイマー
    scoreboard objectives add 8T.AnimationTimer dummy
    # 行動回数
    scoreboard objectives add 8T.ActionCount dummy
    # 怯み処理用
    scoreboard objectives add 8T.DamageTimer dummy
    # 処理用カウンター
    scoreboard objectives add 8T.TempCount dummy