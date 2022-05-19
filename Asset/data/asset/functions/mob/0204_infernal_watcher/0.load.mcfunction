#> asset:mob/0204_infernal_watcher/0.load
#
# MOBに利用するスコアボード等の初期化処理
#
# @within tag/function asset:mob/load

#> 定義類はここに
# @within function asset:mob/0204_infernal_watcher/**
    scoreboard objectives add 5O.HurtTime dummy
    scoreboard objectives add 5O.MoveTime dummy
    scoreboard objectives add 5O.AttackCT dummy
    scoreboard objectives add 5O.LifeTime dummy