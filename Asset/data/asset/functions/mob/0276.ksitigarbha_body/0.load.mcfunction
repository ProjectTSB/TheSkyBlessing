#> asset:mob/0276.ksitigarbha_body/0.load
#
# MOBに利用するスコアボード等の初期化処理
#
# @within tag/function asset:mob/load

#> 定義類はここに
# @within function asset:mob/0276.ksitigarbha_body/**
    scoreboard objectives add 7O.PairID dummy

#> お地蔵さん本体からも参照されるやつ
# @within
#   function asset:mob/0276.ksitigarbha_body/**
#   function asset:mob/0236.ksitigarbha/**
    scoreboard objectives add 7O.SurcideTime dummy