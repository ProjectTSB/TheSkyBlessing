#> asset:mob/0307.brave_knight/0.load
#
# MOBに利用するスコアボード等の初期化処理
#
# @within tag/function asset:mob/load

#> 定義類はここに
# @within function asset:mob/0307.brave_knight/**
    scoreboard objectives add 8J.Tick dummy
    scoreboard objectives add 8J.Combo dummy
    scoreboard objectives add 8J.LifeTime dummy

#> こいつだけ召喚用神器からも呼び出す
# @within function
#   asset:mob/0307.brave_knight/**
#   asset:sacred_treasure/1021.call_brave_knight/trigger/2.check_condition
    scoreboard objectives add 8J.OwnerID dummy
