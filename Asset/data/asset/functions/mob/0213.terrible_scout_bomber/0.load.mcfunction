#> asset:mob/0213.terrible_scout_bomber/0.load
#
# MOBに利用するスコアボード等の初期化処理
#
# @within tag/function asset:mob/load

#> 定義類はここに
# @within function asset:mob/0213.terrible_scout_bomber/**
    scoreboard objectives add 5X.ActionPhase dummy
    scoreboard objectives add 5X.PhStartTime dummy
    scoreboard objectives add 5X.TargetId dummy